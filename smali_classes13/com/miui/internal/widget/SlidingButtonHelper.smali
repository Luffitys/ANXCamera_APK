.class public Lcom/miui/internal/widget/SlidingButtonHelper;
.super Ljava/lang/Object;
.source "SlidingButtonHelper.java"


# static fields
.field private static final FULL_ALPHA:I = 0xff


# instance fields
.field private mAnimChecked:Z

.field private mAnimCheckedTemp:Z

.field private mCornerRadius:I

.field private mFrame:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

.field private mIsSliderEdgeReached:Z

.field private mLastX:I

.field private mMarginVertical:I

.field private mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

.field private mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

.field private mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

.field private mMaskCheckedSlideBarAlpha:F

.field private mMaskCheckedSlideBarAlphaProperty:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/widget/SlidingButtonHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskCheckedSlideBarAlphaTemp:F

.field private mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

.field private mMaskUnCheckedPressedSlideBarAlpha:F

.field private mMaskUnCheckedPressedSlideBarAlphaProperty:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/widget/SlidingButtonHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

.field private mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOriginalTouchPointX:I

.field private mParamCached:Z

.field private mSlideBar:Landroid/graphics/drawable/StateListDrawable;

.field private mSliderHeight:I

.field private mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

.field private mSliderMoved:Z

.field private mSliderOff:Landroid/graphics/drawable/Drawable;

.field private mSliderOffset:I

.field private mSliderOffsetProperty:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/widget/SlidingButtonHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mSliderOffsetTemp:I

.field private mSliderOn:Landroid/graphics/drawable/Drawable;

.field private mSliderOnAlpha:I

.field private mSliderOnAlphaTemp:I

.field private mSliderPositionEnd:I

.field private mSliderPositionStart:I

.field private mSliderPressedAnim:Lmiui/animation/physics/SpringAnimation;

.field private mSliderScale:F

.field private mSliderScaleFloatProperty:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/widget/SlidingButtonHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mSliderShadow:Landroid/graphics/drawable/Drawable;

.field private mSliderShadowAlpha:F

.field private mSliderShadowAlphaProperty:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/widget/SlidingButtonHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mSliderShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

.field private mSliderShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

.field private mSliderStroke:Landroid/graphics/drawable/Drawable;

.field private mSliderUnPressedAnim:Lmiui/animation/physics/SpringAnimation;

.field private mSliderWidth:I

.field private mStokeAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

.field private mStokeAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

.field private mStrokeAlpha:F

.field private mStrokeAlphaProperty:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/widget/SlidingButtonHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mTapThreshold:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTracking:Z

.field private mUnMarkedPressedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

.field private mUnMarkedPressedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

.field private mView:Landroid/widget/CompoundButton;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlpha:F

    new-instance v2, Lcom/miui/internal/widget/SlidingButtonHelper$1;

    const-string v3, "MaskUnCheckedSlideBarAlpha"

    invoke-direct {v2, p0, v3}, Lcom/miui/internal/widget/SlidingButtonHelper$1;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlphaProperty:Lmiui/animation/property/FloatProperty;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    new-instance v3, Lcom/miui/internal/widget/SlidingButtonHelper$2;

    const-string v4, "MaskCheckedSlideBarAlpha"

    invoke-direct {v3, p0, v4}, Lcom/miui/internal/widget/SlidingButtonHelper$2;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaProperty:Lmiui/animation/property/FloatProperty;

    const v3, 0x3dcccccd    # 0.1f

    iput v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStrokeAlpha:F

    new-instance v3, Lcom/miui/internal/widget/SlidingButtonHelper$3;

    const-string v4, "StrokeAlpha"

    invoke-direct {v3, p0, v4}, Lcom/miui/internal/widget/SlidingButtonHelper$3;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStrokeAlphaProperty:Lmiui/animation/property/FloatProperty;

    iput v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowAlpha:F

    new-instance v3, Lcom/miui/internal/widget/SlidingButtonHelper$4;

    const-string v4, "SliderShadowAlpha"

    invoke-direct {v3, p0, v4}, Lcom/miui/internal/widget/SlidingButtonHelper$4;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowAlphaProperty:Lmiui/animation/property/FloatProperty;

    iput v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderScale:F

    new-instance v2, Lcom/miui/internal/widget/SlidingButtonHelper$5;

    const-string v3, "SliderScale"

    invoke-direct {v2, p0, v3}, Lcom/miui/internal/widget/SlidingButtonHelper$5;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderScaleFloatProperty:Lmiui/animation/property/FloatProperty;

    new-instance v2, Lcom/miui/internal/widget/SlidingButtonHelper$6;

    const-string v3, "SliderOffset"

    invoke-direct {v2, p0, v3}, Lcom/miui/internal/widget/SlidingButtonHelper$6;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffsetProperty:Lmiui/animation/property/FloatProperty;

    new-instance v2, Lcom/miui/internal/widget/SlidingButtonHelper$7;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/SlidingButtonHelper$7;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;)V

    iput-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    iput-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mParamCached:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    iput v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    iput-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimCheckedTemp:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_77

    iput v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    :cond_77
    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->initDrawable()V

    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->initAnim()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/SlidingButtonHelper;)Landroid/widget/CompoundButton;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/internal/widget/SlidingButtonHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/SlidingButtonHelper;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/SlidingButtonHelper;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    return v0
.end method

.method private animateToState(Z)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->startCheckedChangeAnimInternal(Z)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->notifyCheckedChangeListener()V

    :cond_13
    if-eqz p1, :cond_18

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    goto :goto_1a

    :cond_18
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionStart:I

    :goto_1a
    new-instance v1, Lcom/miui/internal/widget/SlidingButtonHelper$9;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SlidingButtonHelper$9;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/internal/widget/SlidingButtonHelper;->animateToState(ZILjava/lang/Runnable;)V

    return-void
.end method

.method private animateToggle()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->animateToState(Z)V

    const v0, 0x10000003

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z

    :cond_19
    return-void
.end method

.method private createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 8

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable;

    invoke-direct {v0}, Lmiui/smooth/SmoothContainerDrawable;-><init>()V

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lmiui/smooth/SmoothContainerDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, p1}, Lmiui/smooth/SmoothContainerDrawable;->setChildDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarginVertical:I

    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    sub-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lmiui/smooth/SmoothContainerDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private createMaskedSlideBar()Landroid/graphics/drawable/StateListDrawable;
    .registers 5

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method

.method private initAnim()V
    .registers 9

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderScaleFloatProperty:Lmiui/animation/property/FloatProperty;

    const v2, 0x3fce147b    # 1.61f

    invoke-direct {v0, p0, v1, v2}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x4476bd71

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiui/animation/physics/SpringAnimation;

    const v3, 0x3b03126f    # 0.002f

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderScaleFloatProperty:Lmiui/animation/property/FloatProperty;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v4, v5}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowAlphaProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {v0, p0, v2, v5}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    const/high16 v3, 0x3b800000    # 0.00390625f

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowAlphaProperty:Lmiui/animation/property/FloatProperty;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v4, v6}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStrokeAlphaProperty:Lmiui/animation/property/FloatProperty;

    const v7, 0x3e19999a    # 0.15f

    invoke-direct {v0, p0, v4, v7}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStrokeAlphaProperty:Lmiui/animation/property/FloatProperty;

    const v7, 0x3dcccccd    # 0.1f

    invoke-direct {v0, p0, v4, v7}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {v0, p0, v4, v5}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v4, 0x43db51ec

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {v0, p0, v4, v6}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlphaProperty:Lmiui/animation/property/FloatProperty;

    const v5, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, p0, v4, v5}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlphaProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {v0, p0, v4, v6}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    return-void
.end method

.method private initDrawable()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$drawable;->sliding_btn_slider_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$drawable;->sliding_btn_slider_stroke_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderStroke:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private moveSlider(I)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    neg-int p1, p1

    :cond_9
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionStart:I

    if-ge v0, v1, :cond_15

    iput v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    goto :goto_1b

    :cond_15
    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    if-le v0, v1, :cond_1b

    iput v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    :cond_1b
    :goto_1b
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionStart:I

    if-eq v0, v1, :cond_28

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    if-ne v0, v1, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x1

    :goto_29
    if-eqz v0, :cond_3d

    iget-boolean v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    if-nez v1, :cond_3d

    const v1, 0x10000003

    invoke-static {v1}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z

    :cond_3d
    iput-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/SlidingButtonHelper;->setSliderOffset(I)V

    return-void
.end method

.method private onTouchEventDown(IILandroid/graphics/Rect;)V
    .registers 8

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTracking:Z

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->onPressedInner()V

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionStart:I

    if-le v2, v3, :cond_1e

    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    if-lt v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :cond_1e
    :goto_1e
    iput-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    goto :goto_23

    :cond_21
    iput-boolean v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTracking:Z

    :goto_23
    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mLastX:I

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mOriginalTouchPointX:I

    iput-boolean v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoved:Z

    return-void
.end method

.method private onTouchEventMove(I)V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTracking:Z

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mLastX:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->moveSlider(I)V

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mLastX:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mOriginalTouchPointX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTapThreshold:I

    if-lt v0, v1, :cond_25

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoved:Z

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_25
    return-void
.end method

.method private onTouchEventUp(IILandroid/graphics/Rect;)V
    .registers 6

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTracking:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoved:Z

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->animateToggle()V

    goto :goto_34

    :cond_c
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->animateToState(Z)V

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_34

    const v0, 0x10000003

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z

    goto :goto_34

    :cond_31
    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->animateToggle()V

    :cond_34
    :goto_34
    return-void
.end method

.method private popSavedParams()V
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mParamCached:Z

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimCheckedTemp:Z

    iput-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mParamCached:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    :cond_20
    return-void
.end method

.method private saveCurrentParams()V
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    iput-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimCheckedTemp:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mParamCached:Z

    return-void
.end method

.method private startCheckedChangeAnimInternal(Z)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_a
    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    goto :goto_13

    :cond_11
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionStart:I

    :goto_13
    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz v0, :cond_1c

    const/16 v0, 0xff

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    :cond_1f
    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->popSavedParams()V

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->setCheckedInner(Z)V

    return-void
.end method

.method private updateCheckedAnim(Z)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_d
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1b

    if-nez p1, :cond_1b

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    :cond_1b
    return-void
.end method

.method private updateUnCheckedAnim(Z)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_d
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz p1, :cond_1a

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    :cond_1a
    return-void
.end method


# virtual methods
.method public addState(Landroid/graphics/drawable/StateListDrawable;[ILandroid/graphics/drawable/Drawable;[ILandroid/graphics/drawable/Drawable;I)V
    .registers 7

    return-void
.end method

.method public animateToState(ZILjava/lang/Runnable;)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_f
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_18

    return-void

    :cond_18
    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffsetProperty:Lmiui/animation/property/FloatProperty;

    int-to-float v2, p2

    invoke-direct {v0, p0, v1, v2}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x4476bd71

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    new-instance v1, Lcom/miui/internal/widget/SlidingButtonHelper$8;

    invoke-direct {v1, p0, p3}, Lcom/miui/internal/widget/SlidingButtonHelper$8;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringAnimation;->addEndListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    if-eqz p1, :cond_6b

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_5d
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    goto :goto_85

    :cond_6b
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_78
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_85
    :goto_85
    return-void
.end method

.method public getMaskCheckedSlideBarAlpha()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    return v0
.end method

.method public getMaskUnCheckedPressedSlideBarAlpha()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlpha:F

    return v0
.end method

.method public getMeasuredHeight()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    return v0
.end method

.method public getSliderOffset()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    int-to-float v0, v0

    return v0
.end method

.method public getSliderOnAlpha()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    return v0
.end method

.method public getSliderScale()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderScale:F

    return v0
.end method

.method public getSliderShadowAlpha()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowAlpha:F

    return v0
.end method

.method public getStrokeAlpha()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStrokeAlpha:F

    return v0
.end method

.method public initMaskedSlideBar(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 13

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->sliding_button_frame_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mCornerRadius:I

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->sliding_button_frame_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarginVertical:I

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setDrawingCacheEnabled(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTapThreshold:I

    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_frame:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mFrame:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_sliderOn:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_sliderOff:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v2, Lcom/miui/internal/R$styleable;->SlidingButton_android_background:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderWidth:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderHeight:I

    iput v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionStart:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderWidth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    iput v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sget v2, Lcom/miui/internal/R$styleable;->SlidingButton_barOff:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    sget v3, Lcom/miui/internal/R$styleable;->SlidingButton_barOn:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v3, Lcom/miui/internal/R$styleable;->SlidingButton_barOff:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$styleable;->SlidingButton_barOn:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v5, v3

    iget v6, v0, Landroid/util/TypedValue;->type:I

    iget v7, v2, Landroid/util/TypedValue;->type:I

    if-ne v6, v7, :cond_bd

    iget v6, v0, Landroid/util/TypedValue;->data:I

    iget v7, v2, Landroid/util/TypedValue;->data:I

    if-ne v6, v7, :cond_bd

    iget v6, v0, Landroid/util/TypedValue;->resourceId:I

    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    if-ne v6, v7, :cond_bd

    move-object v6, v5

    goto :goto_be

    :cond_bd
    move-object v6, v4

    :goto_be
    iget-object v7, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mFrame:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v9, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    invoke-virtual {v7, v1, v1, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v6, :cond_e0

    if-eqz v5, :cond_e0

    invoke-direct {p0, v6}, Lcom/miui/internal/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v5}, Lcom/miui/internal/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/miui/internal/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p0, v1, v7, v8}, Lcom/miui/internal/widget/SlidingButtonHelper;->initMaskedSlideBar(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->createMaskedSlideBar()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    :cond_e0
    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->setSliderDrawState()V

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_f0

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/SlidingButtonHelper;->setSliderOffset(I)V

    :cond_f0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    :cond_7
    return-void
.end method

.method public notifyCheckedChangeListener()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-interface {v1, v2, v0}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_11
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xff

    goto :goto_d

    :cond_b
    const/16 v0, 0x7f

    :goto_d
    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/internal/widget/SlidingButtonHelper;->onDrawSlideBar(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v2}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderWidth:I

    sub-int/2addr v3, v4

    goto :goto_33

    :cond_31
    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    :goto_33
    move v10, v3

    if-eqz v2, :cond_3c

    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v3, v4

    goto :goto_41

    :cond_3c
    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderWidth:I

    iget v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    add-int/2addr v3, v4

    :goto_41
    move v11, v3

    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    iget v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v12, v3, 0x2

    add-int v13, v12, v4

    add-int v3, v11, v10

    div-int/lit8 v3, v3, 0x2

    add-int v4, v13, v12

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, p1, v3, v4}, Lcom/miui/internal/widget/SlidingButtonHelper;->onDrawSliderShadow(Landroid/graphics/Canvas;II)V

    add-int v3, v11, v10

    div-int/lit8 v3, v3, 0x2

    add-int v4, v13, v12

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, p1, v3, v4}, Lcom/miui/internal/widget/SlidingButtonHelper;->scaleCanvasStart(Landroid/graphics/Canvas;II)V

    iget-boolean v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz v3, :cond_75

    iget-object v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v10, v12, v11, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_84

    :cond_75
    iget-object v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v10, v12, v11, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_84
    move-object v3, p0

    move-object v4, p1

    move v5, v1

    move v6, v10

    move v7, v12

    move v8, v11

    move v9, v13

    invoke-virtual/range {v3 .. v9}, Lcom/miui/internal/widget/SlidingButtonHelper;->onDrawSliderStroke(Landroid/graphics/Canvas;FIIII)V

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->scaleCanvasEnd(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrawSlideBar(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v2, p2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlpha:F

    mul-float/2addr v2, v1

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    mul-float/2addr v2, v1

    mul-float/2addr v2, p2

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrawSliderShadow(Landroid/graphics/Canvas;II)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1f

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_29

    :cond_1f
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_29
    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v3, v1, 0x2

    sub-int v3, p2, v3

    div-int/lit8 v4, v0, 0x2

    sub-int v4, p3, v4

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, p2

    div-int/lit8 v6, v0, 0x2

    add-int/2addr v6, p3

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    iget v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowAlpha:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrawSliderStroke(Landroid/graphics/Canvas;FIIII)V
    .registers 10

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderStroke:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStrokeAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderStroke:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderStroke:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onPressedInner()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_d
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_1a
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_27
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_3c
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_49
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_56
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v4}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_21

    iget v5, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v6, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderWidth:I

    sub-int/2addr v5, v6

    goto :goto_23

    :cond_21
    iget v5, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    :goto_23
    if-eqz v4, :cond_2b

    iget v6, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v7, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v6, v7

    goto :goto_30

    :cond_2b
    iget v6, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v7, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderWidth:I

    add-int/2addr v6, v7

    :goto_30
    iget v7, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v0, :cond_63

    const/4 v7, 0x1

    if-eq v0, v7, :cond_53

    const/4 v7, 0x2

    if-eq v0, v7, :cond_4f

    const/4 v7, 0x3

    if-eq v0, v7, :cond_42

    goto :goto_67

    :cond_42
    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->onUnPressedInner()V

    iput-boolean v8, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTracking:Z

    iput-boolean v8, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoved:Z

    iget-object v7, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto :goto_67

    :cond_4f
    invoke-direct {p0, v1}, Lcom/miui/internal/widget/SlidingButtonHelper;->onTouchEventMove(I)V

    goto :goto_67

    :cond_53
    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->onUnPressedInner()V

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/internal/widget/SlidingButtonHelper;->onTouchEventUp(IILandroid/graphics/Rect;)V

    iput-boolean v8, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTracking:Z

    iput-boolean v8, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoved:Z

    iget-object v7, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto :goto_67

    :cond_63
    invoke-direct {p0, v1, v2, v3}, Lcom/miui/internal/widget/SlidingButtonHelper;->onTouchEventDown(IILandroid/graphics/Rect;)V

    nop

    :goto_67
    return-void
.end method

.method public onUnPressedInner()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_d
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_1a
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_27
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_34
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_41
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_56
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_63
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_70
    return-void
.end method

.method public scaleCanvasEnd(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public scaleCanvasStart(Landroid/graphics/Canvas;II)V
    .registers 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderScale:F

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->saveCurrentParams()V

    iput-boolean p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz p1, :cond_a

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    goto :goto_c

    :cond_a
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionStart:I

    :goto_c
    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    if-eqz p1, :cond_13

    const/16 v0, 0xff

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    if-eqz p1, :cond_1b

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_2d
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_3a
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_47
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setCheckedInner(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->updateCheckedAnim(Z)V

    goto :goto_b

    :cond_8
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->updateUnCheckedAnim(Z)V

    :goto_b
    return-void
.end method

.method public setMaskCheckedSlideBarAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    return-void
.end method

.method public setMaskUnCheckedPressedSlideBarAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlpha:F

    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setParentClipChildren()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_13
    return-void
.end method

.method public setSliderDrawState()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_18
    return-void
.end method

.method public setSliderOffset(I)V
    .registers 3

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setSliderOnAlpha(I)V
    .registers 3

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setSliderScale(F)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderScale:F

    return-void
.end method

.method public setSliderShadowAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowAlpha:F

    return-void
.end method

.method public setStrokeAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStrokeAlpha:F

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
