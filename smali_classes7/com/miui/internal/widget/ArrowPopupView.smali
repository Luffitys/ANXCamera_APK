.class public Lcom/miui/internal/widget/ArrowPopupView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final ANIMATION_REPEAT_COUNT:I = 0x8

.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_NONE_MODE:I = -0x1

.field private static final ARROW_PADDING:I = 0x1

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ArrowPopupView"

.field private static final TRANSLATION_VALUE:I = 0x4


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mArrow:Landroid/widget/ImageView;

.field private mArrowBottom:Landroid/graphics/drawable/Drawable;

.field private mArrowLeft:Landroid/graphics/drawable/Drawable;

.field private mArrowMode:I

.field private mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;

.field private mArrowRight:Landroid/graphics/drawable/Drawable;

.field private mArrowSpaceLeft:I

.field private mArrowSpaceTop:I

.field private mArrowTop:Landroid/graphics/drawable/Drawable;

.field private mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

.field private mAutoDismiss:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundLeft:Landroid/graphics/drawable/Drawable;

.field private mBackgroundRight:Landroid/graphics/drawable/Drawable;

.field private mContentFrame:Landroid/widget/FrameLayout;

.field private mContentFrameWrapper:Landroid/widget/LinearLayout;

.field private mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

.field private mIsDismissing:Z

.field private mMinBorder:I

.field private mNegativeButton:Landroid/widget/Button;

.field private mNegativeClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPositiveButton:Landroid/widget/Button;

.field private mPositiveClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShowingAnimation:Z

.field private mSpaceLeft:I

.field private mSpaceTop:I

.field private mTitleBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleText:Landroid/widget/TextView;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRectF:Landroid/graphics/RectF;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTranslationValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/miui/internal/R$attr;->arrowPopupViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    new-instance v2, Lcom/miui/internal/widget/ArrowPopupView$1;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/ArrowPopupView$1;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v2, Lcom/miui/internal/widget/ArrowPopupView$2;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/ArrowPopupView$2;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    iput-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    sget-object v0, Lcom/miui/internal/R$styleable;->ArrowPopupView:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_contentBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_backgroundLeft:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_backgroundRight:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_titleBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_topArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_topArrowWithTitle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_bottomArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_rightArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_leftArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$dimen;->arrow_popup_window_min_border:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mMinBorder:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/internal/widget/ArrowPopupView;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/internal/widget/ArrowPopupView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/ArrowPopupView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->animateShowing()V

    return-void
.end method

.method static synthetic access$302(Lcom/miui/internal/widget/ArrowPopupView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mIsDismissing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/ArrowPopupView;)Lmiui/widget/ArrowPopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/ArrowPopupView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/internal/widget/ArrowPopupView;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->getAnimationPivot([F)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/internal/widget/ArrowPopupView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTranslationValue:I

    return p0
.end method

.method static synthetic access$902(Lcom/miui/internal/widget/ArrowPopupView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTranslationValue:I

    return p1
.end method

.method private adjustArrowMode()V
    .locals 13

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    const/4 v8, 0x4

    new-array v9, v8, [I

    const/4 v10, 0x1

    aget v11, v1, v10

    sub-int/2addr v11, v5

    const/4 v12, 0x0

    aput v11, v9, v12

    aget v11, v1, v10

    sub-int/2addr v3, v11

    sub-int/2addr v3, v6

    sub-int/2addr v3, v5

    aput v3, v9, v10

    aget v3, v1, v12

    sub-int/2addr v3, v4

    aput v3, v9, v0

    aget v0, v1, v12

    sub-int/2addr v2, v0

    sub-int/2addr v2, v7

    sub-int/2addr v2, v4

    const/4 v0, 0x3

    aput v2, v9, v0

    const/high16 v0, -0x80000000

    move v1, v12

    :goto_0
    if-ge v12, v8, :cond_2

    aget v2, v9, v12

    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mMinBorder:I

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    aget v2, v9, v12

    if-le v2, v0, :cond_1

    aget v0, v9, v12

    move v1, v12

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    move v12, v1

    :goto_1
    invoke-virtual {p0, v12}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowMode(I)V

    return-void
.end method

.method private animateShowing()V
    .locals 13

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/miui/internal/widget/ArrowPopupView$6;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/ArrowPopupView$6;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v1

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_4

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_2
    neg-float v2, v2

    goto :goto_1

    :cond_3
    neg-float v2, v2

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    new-array v3, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v3, v6

    const/4 v8, 0x1

    aput v2, v3, v8

    aput v7, v3, v5

    invoke-static {v1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v9, 0x4b0

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-boolean v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    const/16 v11, 0x8

    const/4 v12, -0x1

    if-eqz v3, :cond_5

    invoke-virtual {v1, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    :goto_2
    new-instance v3, Lcom/miui/internal/widget/ArrowPopupView$7;

    invoke-direct {v3, p0}, Lcom/miui/internal/widget/ArrowPopupView$7;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    new-array v4, v4, [F

    aput v7, v4, v6

    aput v2, v4, v8

    aput v7, v4, v5

    invoke-static {v3, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-boolean v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    :goto_3
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v1, v3, v6

    aput-object v0, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    return-void
.end method

.method private arrowHorizontalLayout()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-object v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v6, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget-object v7, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    iget-object v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v12

    if-le v11, v12, :cond_0

    iget-object v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    goto :goto_0

    :cond_0
    iget-object v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v11

    :goto_0
    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    iget-object v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v13

    if-le v12, v13, :cond_1

    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    goto :goto_1

    :cond_1
    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v12

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getArrowWidth()I

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getArrowHeight()I

    move-result v14

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v6

    aget v16, v2, v5

    sub-int v15, v15, v16

    iput v15, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    sub-int v15, v10, v15

    sub-int/2addr v8, v14

    div-int/2addr v8, v1

    add-int/2addr v6, v8

    aget v8, v2, v5

    sub-int/2addr v6, v8

    iget-object v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v8

    iget-object v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v8, v5

    div-int/2addr v8, v1

    add-int/2addr v6, v8

    iput v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    div-int/lit8 v5, v12, 0x2

    sub-int v6, v12, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v8

    iget v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetX:I

    add-int/2addr v8, v3

    iput v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    iget v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    if-ne v3, v1, :cond_2

    sub-int v1, v4, v11

    iget-object v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v1, v13

    const/4 v3, 0x0

    aget v7, v2, v3

    sub-int/2addr v1, v7

    add-int/2addr v8, v1

    iput v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int/2addr v4, v13

    aget v1, v2, v3

    sub-int/2addr v4, v1

    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetX:I

    add-int/2addr v4, v1

    const/4 v1, 0x1

    add-int/lit8 v1, v4, -0x1

    :goto_2
    move v3, v1

    goto :goto_3

    :cond_2
    const/4 v1, 0x3

    if-ne v3, v1, :cond_3

    add-int/2addr v4, v7

    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v4, v1

    add-int/2addr v4, v13

    const/4 v1, 0x0

    aget v2, v2, v1

    sub-int/2addr v4, v2

    add-int/2addr v8, v4

    iput v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v1, v13

    add-int/2addr v8, v1

    const/4 v1, 0x1

    add-int/2addr v1, v8

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_3
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    if-lt v1, v5, :cond_4

    if-lt v15, v6, :cond_4

    sub-int/2addr v1, v5

    goto :goto_4

    :cond_4
    if-ge v15, v6, :cond_5

    sub-int v1, v10, v12

    :goto_4
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v1, v2

    :goto_5
    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    goto :goto_6

    :cond_5
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    if-ge v1, v5, :cond_6

    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    goto :goto_5

    :cond_6
    :goto_6
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    if-gez v1, :cond_7

    const/4 v2, 0x0

    iput v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    goto :goto_7

    :cond_7
    add-int v2, v1, v14

    if-le v2, v10, :cond_8

    add-int v2, v1, v14

    sub-int/2addr v2, v10

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    :cond_8
    :goto_7
    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v5, v11

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    add-int/2addr v6, v12

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    add-int/2addr v13, v3

    add-int/2addr v14, v0

    invoke-virtual {v1, v3, v0, v13, v14}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method private arrowLayout()V
    .locals 5

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->arrowHorizontalLayout()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->arrowVerticalLayout()V

    :goto_1
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr v2, p0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    if-le v2, v3, :cond_3

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    :cond_3
    :goto_3
    iget p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p0, :cond_4

    iget p0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz p0, :cond_5

    :cond_4
    const-string p0, "ArrowPopupView"

    const-string v0, "Invalid LayoutPrams of content view, please check the anchor view"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private arrowVerticalLayout()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    iget-object v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v6

    if-le v5, v6, :cond_0

    iget-object v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v5

    :goto_0
    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v7

    if-le v6, v7, :cond_1

    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v6

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getArrowWidth()I

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getArrowHeight()I

    move-result v8

    const/4 v9, 0x2

    new-array v10, v9, [I

    iget-object v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v11, 0x0

    aget v12, v10, v11

    const/4 v13, 0x1

    aget v14, v10, v13

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    div-int/lit8 v15, v1, 0x2

    add-int/2addr v15, v12

    aget v16, v10, v11

    sub-int v15, v15, v16

    iput v15, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v15, v3, v15

    sub-int/2addr v1, v7

    div-int/2addr v1, v9

    add-int/2addr v12, v1

    aget v1, v10, v11

    sub-int/2addr v12, v1

    iput v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    if-nez v9, :cond_2

    aget v2, v10, v13

    sub-int v2, v14, v2

    sub-int/2addr v2, v6

    iget-object v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v9, v8

    add-int/2addr v2, v9

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    aget v1, v10, v13

    sub-int/2addr v14, v1

    sub-int/2addr v14, v8

    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v14, v1

    sub-int/2addr v14, v13

    goto :goto_2

    :cond_2
    if-ne v9, v13, :cond_3

    add-int/2addr v14, v2

    aget v2, v10, v13

    sub-int/2addr v14, v2

    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v14, v2

    add-int/2addr v14, v8

    add-int/2addr v1, v14

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v2, v8

    add-int/2addr v1, v2

    add-int/lit8 v14, v1, 0x1

    goto :goto_2

    :cond_3
    move v14, v11

    :goto_2
    div-int/lit8 v1, v5, 0x2

    sub-int v2, v5, v1

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    if-lt v9, v1, :cond_4

    if-lt v15, v2, :cond_4

    sub-int/2addr v9, v1

    iput v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    goto :goto_3

    :cond_4
    if-ge v15, v2, :cond_5

    sub-int v1, v3, v5

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    goto :goto_3

    :cond_5
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    if-ge v2, v1, :cond_6

    iput v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    :cond_6
    :goto_3
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    if-gez v1, :cond_7

    iput v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    goto :goto_4

    :cond_7
    add-int v2, v1, v7

    if-le v2, v3, :cond_8

    add-int v2, v1, v7

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    :cond_8
    :goto_4
    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v10, v5

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    add-int/2addr v5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v2, v9, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    add-int/2addr v7, v0

    add-int/2addr v8, v14

    invoke-virtual {v1, v0, v14, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method private getAnimationPivot([F)V
    .locals 7

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    iget p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v6, :cond_1

    const/4 v3, 0x3

    if-eq p0, v3, :cond_0

    move p0, v5

    goto :goto_2

    :cond_0
    int-to-float v5, v2

    goto :goto_0

    :cond_1
    int-to-float v5, v3

    :goto_0
    sub-int/2addr v1, v0

    div-int/2addr v1, v6

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    sub-int/2addr v3, v2

    div-int/2addr v3, v6

    add-int/2addr v2, v3

    int-to-float v5, v2

    :goto_1
    int-to-float p0, v0

    goto :goto_2

    :cond_3
    sub-int/2addr v3, v2

    div-int/2addr v3, v6

    add-int/2addr v2, v3

    int-to-float v5, v2

    int-to-float p0, v1

    :goto_2
    const/4 v0, 0x0

    aput v5, p1, v0

    aput p0, p1, v4

    return-void
.end method

.method private getArrowHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getArrowWidth()I
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public addShadow()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$3;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$3;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-static {v0, v1}, Lcom/miui/internal/widget/ArrowPopupWindowHelper;->addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$4;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$4;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-static {v0, v1}, Lcom/miui/internal/widget/ArrowPopupWindowHelper;->addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public animateToDismiss()V
    .locals 12

    iget-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mIsDismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    :cond_2
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->getAnimationPivot([F)V

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f19999a    # 0.6f

    const/4 v7, 0x0

    const/4 v2, 0x0

    aget v8, v0, v2

    const/4 v9, 0x0

    aget v10, v0, v1

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x96

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public animateToShow()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$5;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$5;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public enableShowingAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    return-void
.end method

.method public getArrowMode()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeButton:Landroid/widget/Button;

    return-object p0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveButton:Landroid/widget/Button;

    return-object p0
.end method

.method public getRollingPercent()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    add-int/2addr v1, v3

    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v5, :cond_3

    if-eq v3, v2, :cond_2

    if-eq v3, v4, :cond_1

    move v3, v6

    move v8, v7

    move v9, v8

    goto :goto_1

    :cond_1
    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v8, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    iget-object v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    div-int/2addr v9, v2

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v9

    sub-int/2addr v9, v8

    iget v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    goto :goto_0

    :cond_2
    const/high16 v3, 0x42b40000    # 90.0f

    iget v8, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    iget-object v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    div-int/2addr v9, v2

    add-int/2addr v8, v9

    iget v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    sub-int v9, v8, v9

    iget-object v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v10

    sub-int v8, v10, v8

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    iget-object v8, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    div-int/2addr v8, v2

    add-int/2addr v3, v8

    iget v8, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v9, v3, v8

    iget-object v8, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getRight()I

    move-result v8

    sub-int/2addr v8, v3

    move v3, v6

    goto :goto_1

    :cond_4
    const/high16 v3, 0x43340000    # 180.0f

    iget v8, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    iget-object v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v2

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getRight()I

    move-result v9

    sub-int/2addr v9, v8

    iget v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    :goto_0
    sub-int/2addr v8, v10

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    int-to-float v11, v0

    int-to-float v12, v1

    invoke-virtual {p1, v3, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    if-eqz v3, :cond_7

    if-eq v3, v5, :cond_7

    if-eq v3, v2, :cond_5

    if-eq v3, v4, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v7, v7, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    if-ne v0, v4, :cond_6

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTranslationValue:I

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTranslationValue:I

    neg-int v0, v0

    :goto_2
    int-to-float v0, v0

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v0, v9

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v7, v7, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    if-ne v0, v5, :cond_8

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTranslationValue:I

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTranslationValue:I

    neg-int v0, v0

    :goto_3
    int-to-float v0, v0

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v0, v9

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    :goto_4
    invoke-virtual {v0, v7, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_5
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/miui/internal/R$id;->popup_arrow:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    sget v0, Lcom/miui/internal/R$id;->content_wrapper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->arrow_popup_view_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    sget v0, Lcom/miui/internal/R$id;->title_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleText:Landroid/widget/TextView;

    const v0, 0x102001a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveButton:Landroid/widget/Button;

    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeButton:Landroid/widget/Button;

    new-instance v0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    new-instance v0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeButton:Landroid/widget/Button;

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void

    :cond_1
    iget p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->adjustArrowMode()V

    :cond_2
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->arrowLayout()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0, v4}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    return v4

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    return-void
.end method

.method public setArrowMode(I)V
    .locals 1

    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public setArrowPopupWindow(Lmiui/widget/ArrowPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;

    return-void
.end method

.method public setAutoDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeButton:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOffset(II)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetX:I

    iput p2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveButton:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRollingPercent(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method
