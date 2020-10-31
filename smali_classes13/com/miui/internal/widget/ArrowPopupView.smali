.class public Lcom/miui/internal/widget/ArrowPopupView;
.super Landroid/widget/FrameLayout;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;
    }
.end annotation


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
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/miui/internal/R$attr;->arrowPopupViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

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

    move-result-object v0

    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_contentBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_backgroundLeft:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_backgroundRight:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_titleBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_topArrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_topArrowWithTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_bottomArrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_rightArrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/miui/internal/R$styleable;->ArrowPopupView_leftArrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$dimen;->arrow_popup_window_min_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mMinBorder:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/internal/widget/ArrowPopupView;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/internal/widget/ArrowPopupView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/ArrowPopupView;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->animateShowing()V

    return-void
.end method

.method static synthetic access$302(Lcom/miui/internal/widget/ArrowPopupView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mIsDismissing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/ArrowPopupView;)Lmiui/widget/ArrowPopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/ArrowPopupView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/internal/widget/ArrowPopupView;[F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->getAnimationPivot([F)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/internal/widget/ArrowPopupView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTranslationValue:I

    return v0
.end method

.method static synthetic access$902(Lcom/miui/internal/widget/ArrowPopupView;I)I
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTranslationValue:I

    return p1
.end method

.method private adjustArrowMode()V
    .registers 15

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getHeight()I

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

    sub-int v11, v3, v11

    sub-int/2addr v11, v6

    sub-int/2addr v11, v5

    aput v11, v9, v10

    aget v10, v1, v12

    sub-int/2addr v10, v4

    aput v10, v9, v0

    aget v0, v1, v12

    sub-int v0, v2, v0

    sub-int/2addr v0, v7

    sub-int/2addr v0, v4

    const/4 v10, 0x3

    aput v0, v9, v10

    const/4 v0, 0x0

    const/high16 v10, -0x80000000

    const/4 v11, 0x0

    :goto_4c
    if-ge v11, v8, :cond_60

    aget v12, v9, v11

    iget v13, p0, Lcom/miui/internal/widget/ArrowPopupView;->mMinBorder:I

    if-lt v12, v13, :cond_56

    move v0, v11

    goto :goto_60

    :cond_56
    aget v12, v9, v11

    if-le v12, v10, :cond_5d

    move v0, v11

    aget v10, v9, v11

    :cond_5d
    add-int/lit8 v11, v11, 0x1

    goto :goto_4c

    :cond_60
    :goto_60
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowMode(I)V

    return-void
.end method

.method private animateShowing()V
    .registers 14

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_12
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$6;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$6;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_46

    if-eq v2, v4, :cond_42

    if-eq v2, v3, :cond_3f

    goto :goto_48

    :cond_3f
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_48

    :cond_42
    neg-float v1, v1

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_48

    :cond_46
    neg-float v1, v1

    nop

    :goto_48
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    new-array v5, v3, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v8, 0x1

    aput v1, v5, v8

    aput v7, v5, v4

    invoke-static {v2, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v9, 0x4b0

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-boolean v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    const/16 v11, 0x8

    const/4 v12, -0x1

    if-eqz v5, :cond_71

    invoke-virtual {v2, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_74

    :cond_71
    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    :goto_74
    new-instance v5, Lcom/miui/internal/widget/ArrowPopupView$7;

    invoke-direct {v5, p0}, Lcom/miui/internal/widget/ArrowPopupView$7;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    new-array v3, v3, [F

    aput v7, v3, v6

    aput v1, v3, v8

    aput v7, v3, v4

    invoke-static {v5, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-boolean v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    if-eqz v5, :cond_9d

    invoke-virtual {v3, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_a0

    :cond_9d
    invoke-virtual {v3, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    :goto_a0
    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v6

    aput-object v3, v4, v8

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    :cond_b0
    return-void
.end method

.method private arrowHorizontalLayout()V
    .registers 23

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-object v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v6, v2, v5

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ArrowPopupView;->getLocationOnScreen([I)V

    iget-object v7, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getHeight()I

    move-result v10

    iget-object v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v12

    if-le v11, v12, :cond_3c

    iget-object v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    goto :goto_42

    :cond_3c
    iget-object v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v11

    :goto_42
    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    iget-object v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v13

    if-le v12, v13, :cond_57

    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    goto :goto_5d

    :cond_57
    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v12

    :goto_5d
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

    sub-int v16, v8, v14

    div-int/lit8 v16, v16, 0x2

    add-int v16, v6, v16

    aget v17, v2, v5

    sub-int v16, v16, v17

    iget-object v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    iget-object v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v5, v3

    div-int/2addr v5, v1

    add-int v3, v16, v5

    iput v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    div-int/lit8 v3, v12, 0x2

    sub-int v5, v12, v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getLeft()I

    move-result v16

    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetX:I

    add-int v1, v16, v1

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    const/16 v16, 0x0

    move/from16 v20, v6

    iget v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    move/from16 v21, v8

    const/4 v8, 0x2

    if-ne v6, v8, :cond_c5

    sub-int v6, v4, v11

    iget-object v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v6, v8

    sub-int/2addr v6, v13

    const/4 v8, 0x0

    aget v18, v2, v8

    sub-int v6, v6, v18

    add-int/2addr v1, v6

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v1, v4, v13

    aget v6, v2, v8

    sub-int/2addr v1, v6

    iget v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetX:I

    add-int/2addr v1, v6

    const/4 v6, 0x1

    add-int/lit8 v16, v1, -0x1

    move/from16 v1, v16

    goto :goto_ea

    :cond_c5
    const/4 v8, 0x3

    if-ne v6, v8, :cond_e8

    add-int v6, v4, v7

    iget-object v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v6, v8

    add-int/2addr v6, v13

    const/4 v8, 0x0

    aget v19, v2, v8

    sub-int v6, v6, v19

    add-int/2addr v1, v6

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v6, v13

    add-int/2addr v1, v6

    const/4 v6, 0x1

    add-int/lit8 v16, v1, 0x1

    move/from16 v1, v16

    goto :goto_ea

    :cond_e8
    move/from16 v1, v16

    :goto_ea
    iget v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    if-lt v6, v3, :cond_f7

    if-lt v15, v5, :cond_f7

    sub-int/2addr v6, v3

    iget v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v6, v8

    iput v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    goto :goto_109

    :cond_f7
    if-ge v15, v5, :cond_101

    sub-int v6, v10, v12

    iget v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v6, v8

    iput v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    goto :goto_109

    :cond_101
    iget v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    if-ge v6, v3, :cond_109

    iget v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    iput v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    :cond_109
    :goto_109
    iget v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    iget v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v6, v8

    iput v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    if-gez v6, :cond_116

    const/4 v6, 0x0

    iput v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    goto :goto_120

    :cond_116
    add-int v8, v6, v14

    if-le v8, v10, :cond_120

    add-int v8, v6, v14

    sub-int/2addr v8, v10

    sub-int/2addr v6, v8

    iput v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    :cond_120
    :goto_120
    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    iget v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v17, v3

    iget v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v3, v11

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    move/from16 v18, v4

    iget v4, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    add-int/2addr v4, v12

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v6, v8, v2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    add-int v4, v1, v13

    add-int v6, v3, v14

    invoke-virtual {v2, v1, v3, v4, v6}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method private arrowLayout()V
    .registers 6

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->arrowHorizontalLayout()V

    goto :goto_f

    :cond_c
    :goto_c
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->arrowVerticalLayout()V

    :goto_f
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_65

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

    if-le v2, v3, :cond_3f

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_56

    :cond_3f
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    if-le v2, v3, :cond_56

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_56
    :goto_56
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_5e

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_65

    :cond_5e
    const-string v2, "ArrowPopupView"

    const-string v3, "Invalid LayoutPrams of content view, please check the anchor view"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    return-void
.end method

.method private arrowVerticalLayout()V
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getHeight()I

    move-result v4

    iget-object v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v6

    if-le v5, v6, :cond_2b

    iget-object v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    goto :goto_31

    :cond_2b
    iget-object v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v5

    :goto_31
    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v7

    if-le v6, v7, :cond_46

    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    goto :goto_4c

    :cond_46
    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v6

    :goto_4c
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

    invoke-virtual {v0, v10}, Lcom/miui/internal/widget/ArrowPopupView;->getLocationOnScreen([I)V

    div-int/lit8 v15, v1, 0x2

    add-int/2addr v15, v12

    aget v16, v10, v11

    sub-int v15, v15, v16

    iput v15, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v15, v3, v15

    sub-int v16, v1, v7

    div-int/lit8 v16, v16, 0x2

    add-int v16, v12, v16

    aget v9, v10, v11

    sub-int v9, v16, v9

    iput v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getTop()I

    move-result v9

    iget v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v9, v11

    iput v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    const/4 v11, 0x0

    iget v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    if-nez v13, :cond_ac

    const/4 v13, 0x1

    aget v17, v10, v13

    sub-int v17, v14, v17

    sub-int v17, v17, v6

    iget-object v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v13, v8

    add-int v17, v17, v13

    add-int v9, v9, v17

    iput v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    const/4 v9, 0x1

    aget v13, v10, v9

    sub-int v13, v14, v13

    sub-int/2addr v13, v8

    move/from16 v18, v1

    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v13, v1

    add-int/lit8 v11, v13, -0x1

    goto :goto_cd

    :cond_ac
    move/from16 v18, v1

    const/4 v1, 0x1

    if-ne v13, v1, :cond_cd

    add-int v13, v14, v2

    aget v19, v10, v1

    sub-int v13, v13, v19

    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v13, v1

    add-int/2addr v13, v8

    add-int/2addr v9, v13

    iput v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v1, v8

    add-int/2addr v9, v1

    const/4 v1, 0x1

    add-int/lit8 v11, v9, 0x1

    :cond_cd
    :goto_cd
    div-int/lit8 v1, v5, 0x2

    sub-int v9, v5, v1

    iget v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    if-lt v13, v1, :cond_db

    if-lt v15, v9, :cond_db

    sub-int/2addr v13, v1

    iput v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    goto :goto_e9

    :cond_db
    if-ge v15, v9, :cond_e2

    sub-int v13, v3, v5

    iput v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    goto :goto_e9

    :cond_e2
    iget v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    if-ge v13, v1, :cond_e9

    const/4 v13, 0x0

    iput v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    :cond_e9
    :goto_e9
    iget v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    move/from16 v17, v1

    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetX:I

    add-int/2addr v13, v1

    iput v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    iget v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    add-int/2addr v13, v1

    iput v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    if-gez v13, :cond_fd

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    goto :goto_107

    :cond_fd
    add-int v1, v13, v7

    if-le v1, v3, :cond_107

    add-int v1, v13, v7

    sub-int/2addr v1, v3

    sub-int/2addr v13, v1

    iput v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    :cond_107
    :goto_107
    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    iget v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    move/from16 v19, v2

    const/4 v2, 0x0

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    move/from16 v16, v9

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v9, v5

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    move/from16 v20, v3

    iget v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    add-int/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v13, v2, v9, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    add-int v3, v2, v7

    add-int v9, v11, v8

    invoke-virtual {v1, v2, v11, v3, v9}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method private getAnimationPivot([F)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    iget v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v6, :cond_3d

    if-eq v6, v7, :cond_36

    if-eq v6, v8, :cond_2f

    const/4 v9, 0x3

    if-eq v6, v9, :cond_28

    goto :goto_43

    :cond_28
    int-to-float v0, v4

    sub-int v6, v3, v2

    div-int/2addr v6, v8

    add-int/2addr v6, v2

    int-to-float v1, v6

    goto :goto_43

    :cond_2f
    int-to-float v0, v5

    sub-int v6, v3, v2

    div-int/2addr v6, v8

    add-int/2addr v6, v2

    int-to-float v1, v6

    goto :goto_43

    :cond_36
    sub-int v6, v5, v4

    div-int/2addr v6, v8

    add-int/2addr v6, v4

    int-to-float v0, v6

    int-to-float v1, v2

    goto :goto_43

    :cond_3d
    sub-int v6, v5, v4

    div-int/2addr v6, v8

    add-int/2addr v6, v4

    int-to-float v0, v6

    int-to-float v1, v3

    :goto_43
    const/4 v6, 0x0

    aput v0, p1, v6

    aput v1, p1, v7

    return-void
.end method

.method private getArrowHeight()I
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :cond_12
    return v0
.end method

.method private getArrowWidth()I
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :cond_12
    return v0
.end method


# virtual methods
.method public addShadow()V
    .registers 3

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
    .registers 13

    iget-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mIsDismissing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_c
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    :cond_13
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

    move-object v1, v11

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-boolean v3, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v3, :cond_4c

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_53

    :cond_4c
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    :goto_53
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ArrowPopupView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public animateToShow()V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->invalidate()V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$5;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$5;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public enableShowingAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    return-void
.end method

.method public getArrowMode()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getRollingPercent()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    iget-object v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    div-int/2addr v7, v6

    add-int/2addr v5, v7

    iget v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v7, :cond_78

    if-eq v7, v9, :cond_5f

    if-eq v7, v6, :cond_45

    if-eq v7, v8, :cond_2b

    goto :goto_92

    :cond_2b
    const/high16 v0, -0x3d4c0000    # -90.0f

    iget v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    iget-object v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    div-int/2addr v10, v6

    add-int v1, v7, v10

    iget-object v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v7

    sub-int v2, v7, v1

    iget v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    sub-int v3, v1, v7

    goto :goto_92

    :cond_45
    const/high16 v0, 0x42b40000    # 90.0f

    iget v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    iget-object v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    div-int/2addr v10, v6

    add-int v1, v7, v10

    iget v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    sub-int v2, v1, v7

    iget-object v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v7

    sub-int v3, v7, v1

    goto :goto_92

    :cond_5f
    const/4 v0, 0x0

    iget v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    iget-object v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    div-int/2addr v10, v6

    add-int v1, v7, v10

    iget v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v2, v1, v7

    iget-object v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getRight()I

    move-result v7

    sub-int v3, v7, v1

    goto :goto_92

    :cond_78
    const/high16 v0, 0x43340000    # 180.0f

    iget v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    iget-object v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    div-int/2addr v10, v6

    add-int v1, v7, v10

    iget-object v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getRight()I

    move-result v7

    sub-int v2, v7, v1

    iget v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v3, v1, v7

    nop

    :goto_92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    int-to-float v10, v4

    int-to-float v11, v5

    invoke-virtual {p1, v0, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v10, :cond_f3

    if-eq v10, v9, :cond_f3

    if-eq v10, v6, :cond_a9

    if-eq v10, v8, :cond_a9

    goto/16 :goto_12f

    :cond_a9
    iget-object v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v9

    div-int/2addr v9, v6

    sub-int v9, v4, v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v10

    div-int/2addr v10, v6

    sub-int v6, v5, v10

    int-to-float v6, v6

    invoke-virtual {p1, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v9

    invoke-virtual {v6, v12, v12, v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    if-ne v6, v8, :cond_d2

    iget v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTranslationValue:I

    goto :goto_d5

    :cond_d2
    iget v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTranslationValue:I

    neg-int v6, v6

    :goto_d5
    int-to-float v6, v6

    invoke-virtual {p1, v11, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v6, v2

    invoke-virtual {p1, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v8

    invoke-virtual {v6, v12, v12, v3, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_12f

    :cond_f3
    iget v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceLeft:I

    int-to-float v6, v6

    iget v8, p0, Lcom/miui/internal/widget/ArrowPopupView;->mSpaceTop:I

    int-to-float v8, v8

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v8

    invoke-virtual {v6, v12, v12, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    if-ne v6, v9, :cond_10e

    iget v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTranslationValue:I

    goto :goto_111

    :cond_10e
    iget v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTranslationValue:I

    neg-int v6, v6

    :goto_111
    int-to-float v6, v6

    invoke-virtual {p1, v11, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v6, v2

    invoke-virtual {p1, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v8

    invoke-virtual {v6, v12, v12, v3, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    nop

    :goto_12f
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 8

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/miui/internal/R$id;->popup_arrow:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    sget v0, Lcom/miui/internal/R$id;->content_wrapper:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->arrow_popup_view_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_59

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_59
    sget v1, Lcom/miui/internal/R$id;->title_layout:I

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x1020016

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleText:Landroid/widget/TextView;

    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveButton:Landroid/widget/Button;

    const v1, 0x1020019

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeButton:Landroid/widget/Button;

    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->dismiss()V

    :cond_15
    return-void

    :cond_16
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->adjustArrowMode()V

    :cond_1e
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->arrowLayout()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

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

    if-nez v3, :cond_24

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_24

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v3, v4}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    return v4

    :cond_24
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    if-eqz v3, :cond_2f

    invoke-interface {v3, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v4, 0x0

    :goto_30
    return v4
.end method

.method public setAnchor(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    return-void
.end method

.method public setArrowMode(I)V
    .registers 4

    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    if-eqz p1, :cond_31

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    goto :goto_39

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_39

    :cond_16
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_39

    :cond_1e
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

    goto :goto_2d

    :cond_2b
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    :goto_2d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_39

    :cond_31
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    nop

    :goto_39
    return-void
.end method

.method public setArrowPopupWindow(Lmiui/widget/ArrowPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;

    return-void
.end method

.method public setAutoDismiss(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    return-void
.end method

.method public setContentView(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeButton:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x8

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOffset(II)V
    .registers 3

    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetX:I

    iput p2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveButton:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x8

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRollingPercent(F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x8

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method
