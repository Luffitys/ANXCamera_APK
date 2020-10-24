.class public Lcom/miui/internal/widget/SlidingButtonHelper;
.super Ljava/lang/Object;
.source ""


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

.field private mMaskCheckedSlideBarAlphaTemp:F

.field private mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

.field private mMaskUnCheckedPressedSlideBarAlpha:F

.field private mMaskUnCheckedPressedSlideBarAlphaProperty:Lmiui/animation/property/FloatProperty;

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

.field private mSliderOffsetTemp:I

.field private mSliderOn:Landroid/graphics/drawable/Drawable;

.field private mSliderOnAlpha:I

.field private mSliderOnAlphaTemp:I

.field private mSliderPositionEnd:I

.field private mSliderPositionStart:I

.field private mSliderPressedAnim:Lmiui/animation/physics/SpringAnimation;

.field private mSliderScale:F

.field private mSliderScaleFloatProperty:Lmiui/animation/property/FloatProperty;

.field private mSliderShadow:Landroid/graphics/drawable/Drawable;

.field private mSliderShadowAlpha:F

.field private mSliderShadowAlphaProperty:Lmiui/animation/property/FloatProperty;

.field private mSliderShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

.field private mSliderShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

.field private mSliderStroke:Landroid/graphics/drawable/Drawable;

.field private mSliderUnPressedAnim:Lmiui/animation/physics/SpringAnimation;

.field private mSliderWidth:I

.field private mStokeAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

.field private mStokeAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

.field private mStrokeAlpha:F

.field private mStrokeAlphaProperty:Lmiui/animation/property/FloatProperty;

.field private mTapThreshold:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTracking:Z

.field private mUnMarkedPressedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

.field private mUnMarkedPressedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

.field private mView:Landroid/widget/CompoundButton;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 5

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

    move-result p1

    if-nez p1, :cond_0

    iput v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->initDrawable()V

    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->initAnim()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/SlidingButtonHelper;)Landroid/widget/CompoundButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/internal/widget/SlidingButtonHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/SlidingButtonHelper;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/SlidingButtonHelper;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    return p0
.end method

.method private animateToState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->startCheckedChangeAnimInternal(Z)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->notifyCheckedChangeListener()V

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionStart:I

    :goto_0
    new-instance v1, Lcom/miui/internal/widget/SlidingButtonHelper$9;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SlidingButtonHelper$9;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/internal/widget/SlidingButtonHelper;->animateToState(ZILjava/lang/Runnable;)V

    return-void
.end method

.method private animateToggle()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->animateToState(Z)V

    const v0, 0x10000003

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable;

    invoke-direct {v0}, Lmiui/smooth/SmoothContainerDrawable;-><init>()V

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lmiui/smooth/SmoothContainerDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, p1}, Lmiui/smooth/SmoothContainerDrawable;->setChildDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarginVertical:I

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    sub-int/2addr p0, v1

    const/4 v3, 0x0

    invoke-direct {p1, v3, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private createMaskedSlideBar()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method

.method private initAnim()V
    .locals 8

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

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

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

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v2}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

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

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

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

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

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

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

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

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

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

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

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

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

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

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

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

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, p0}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    return-void
.end method

.method private initDrawable()V
    .locals 2

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
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    neg-int p1, p1

    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iget p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionStart:I

    if-ge v0, p1, :cond_1

    :goto_0
    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    if-le v0, p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionStart:I

    if-eq p1, v0, :cond_4

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    if-nez v0, :cond_5

    const v0, 0x10000003

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z

    :cond_5
    iput-boolean p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    iget p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->setSliderOffset(I)V

    return-void
.end method

.method private onTouchEventDown(IILandroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTracking:Z

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->onPressedInner()V

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionStart:I

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    goto :goto_1

    :cond_2
    iput-boolean p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTracking:Z

    :goto_1
    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mLastX:I

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mOriginalTouchPointX:I

    iput-boolean p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoved:Z

    return-void
.end method

.method private onTouchEventMove(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTracking:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mLastX:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->moveSlider(I)V

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mLastX:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mOriginalTouchPointX:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTapThreshold:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoved:Z

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private onTouchEventUp(IILandroid/graphics/Rect;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTracking:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoved:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->animateToState(Z)V

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x10000003

    invoke-static {p1}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->animateToggle()V

    :cond_3
    :goto_2
    return-void
.end method

.method private popSavedParams()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mParamCached:Z

    if-eqz v0, :cond_0

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

    :cond_0
    return-void
.end method

.method private saveCurrentParams()V
    .locals 1

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
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionStart:I

    :goto_0
    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xff

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    :cond_3
    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->popSavedParams()V

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->setCheckedInner(Z)V

    return-void
.end method

.method private updateCheckedAnim(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    :cond_1
    return-void
.end method

.method private updateUnCheckedAnim(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    :cond_1
    return-void
.end method


# virtual methods
.method public addState(Landroid/graphics/drawable/StateListDrawable;[ILandroid/graphics/drawable/Drawable;[ILandroid/graphics/drawable/Drawable;I)V
    .locals 0

    return-void
.end method

.method public animateToState(ZILjava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffsetProperty:Lmiui/animation/property/FloatProperty;

    int-to-float p2, p2

    invoke-direct {v0, p0, v1, p2}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object p2

    const v0, 0x4476bd71

    invoke-virtual {p2, v0}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object p2

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p2, v0}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {p2, v0}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    iget-object p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    new-instance v0, Lcom/miui/internal/widget/SlidingButtonHelper$8;

    invoke-direct {v0, p0, p3}, Lcom/miui/internal/widget/SlidingButtonHelper$8;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Lmiui/animation/physics/DynamicAnimation;->addEndListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiui/animation/physics/DynamicAnimation;

    iget-object p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiui/animation/physics/SpringAnimation;->start()V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_2
    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_4
    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    :goto_0
    invoke-virtual {p0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_5
    return-void
.end method

.method public getMaskCheckedSlideBarAlpha()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    return p0
.end method

.method public getMaskUnCheckedPressedSlideBarAlpha()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlpha:F

    return p0
.end method

.method public getMeasuredHeight()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    return p0
.end method

.method public getMeasuredWidth()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    return p0
.end method

.method public getSliderOffset()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    int-to-float p0, p0

    return p0
.end method

.method public getSliderOnAlpha()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    return p0
.end method

.method public getSliderScale()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderScale:F

    return p0
.end method

.method public getSliderShadowAlpha()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowAlpha:F

    return p0
.end method

.method public getStrokeAlpha()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStrokeAlpha:F

    return p0
.end method

.method public initMaskedSlideBar(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 5

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

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTapThreshold:I

    sget p1, Lcom/miui/internal/R$styleable;->SlidingButton_frame:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mFrame:Landroid/graphics/drawable/Drawable;

    sget p1, Lcom/miui/internal/R$styleable;->SlidingButton_sliderOn:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    sget p1, Lcom/miui/internal/R$styleable;->SlidingButton_sliderOff:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_android_background:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    iget p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderWidth:I

    iget p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderHeight:I

    iput v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionStart:I

    iget p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderWidth:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    iput v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_barOff:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sget v2, Lcom/miui/internal/R$styleable;->SlidingButton_barOn:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, Lcom/miui/internal/R$styleable;->SlidingButton_barOff:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$styleable;->SlidingButton_barOn:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v3, p1, Landroid/util/TypedValue;->type:I

    iget v4, v0, Landroid/util/TypedValue;->type:I

    if-ne v3, v4, :cond_0

    iget v3, p1, Landroid/util/TypedValue;->data:I

    iget v4, v0, Landroid/util/TypedValue;->data:I

    if-ne v3, v4, :cond_0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-ne p1, v0, :cond_0

    move-object p2, v2

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mFrame:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    invoke-virtual {p1, v1, v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/miui/internal/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, v2}, Lcom/miui/internal/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/miui/internal/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/internal/widget/SlidingButtonHelper;->initMaskedSlideBar(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->createMaskedSlideBar()Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->setSliderDrawState()V

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->setSliderOffset(I)V

    :cond_2
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public notifyCheckedChangeListener()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-interface {v1, p0, v0}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    :goto_0
    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v5, v1, v2

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1, v5, v1}, Lcom/miui/internal/widget/SlidingButtonHelper;->onDrawSlideBar(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v1}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderWidth:I

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    :goto_1
    move v6, v2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderWidth:I

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    add-int/2addr v1, v2

    :goto_2
    move v8, v1

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v7, v1, 0x2

    add-int v9, v7, v2

    add-int v1, v8, v6

    div-int/lit8 v1, v1, 0x2

    add-int v2, v9, v7

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/internal/widget/SlidingButtonHelper;->onDrawSliderShadow(Landroid/graphics/Canvas;II)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/internal/widget/SlidingButtonHelper;->scaleCanvasStart(Landroid/graphics/Canvas;II)V

    iget-boolean v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/miui/internal/widget/SlidingButtonHelper;->onDrawSliderStroke(Landroid/graphics/Canvas;FIIII)V

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->scaleCanvasEnd(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrawSlideBar(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p2, v0

    float-to-int v1, v1

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlpha:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrawSliderShadow(Landroid/graphics/Canvas;II)V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v0, v0, 0x2

    sub-int v3, p2, v0

    div-int/lit8 v1, v1, 0x2

    sub-int v4, p3, v1

    add-int/2addr p2, v0

    add-int/2addr p3, v1

    invoke-virtual {v2, v3, v4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    const/high16 p3, 0x437f0000    # 255.0f

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowAlpha:F

    mul-float/2addr v0, p3

    float-to-int p3, v0

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrawSliderStroke(Landroid/graphics/Canvas;FIIII)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderStroke:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStrokeAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    mul-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderStroke:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderStroke:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onPressedInner()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_4
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v3}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v5, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderWidth:I

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    :goto_0
    if-eqz v3, :cond_1

    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v5, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v5, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderWidth:I

    add-int/2addr v3, v5

    :goto_1
    iget v5, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->onUnPressedInner()V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v1}, Lcom/miui/internal/widget/SlidingButtonHelper;->onTouchEventMove(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->onUnPressedInner()V

    invoke-direct {p0, v1, p1, v2}, Lcom/miui/internal/widget/SlidingButtonHelper;->onTouchEventUp(IILandroid/graphics/Rect;)V

    :goto_2
    iput-boolean v6, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTracking:Z

    iput-boolean v6, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoved:Z

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v6}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto :goto_3

    :cond_5
    invoke-direct {p0, v1, p1, v2}, Lcom/miui/internal/widget/SlidingButtonHelper;->onTouchEventDown(IILandroid/graphics/Rect;)V

    :goto_3
    return-void
.end method

.method public onUnPressedInner()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_4
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_6
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_7
    return-void
.end method

.method public scaleCanvasEnd(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public scaleCanvasStart(Landroid/graphics/Canvas;II)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderScale:F

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, p0, p0, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->saveCurrentParams()V

    iput-boolean p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionStart:I

    :goto_0
    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    if-eqz p1, :cond_1

    const/16 v0, 0xff

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_3
    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_4
    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_5
    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setCheckedInner(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->updateCheckedAnim(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->updateUnCheckedAnim(Z)V

    :goto_0
    return-void
.end method

.method public setMaskCheckedSlideBarAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    return-void
.end method

.method public setMaskUnCheckedPressedSlideBarAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlpha:F

    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setParentClipChildren()V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method public setSliderDrawState()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public setSliderOffset(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setSliderOnAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setSliderScale(F)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderScale:F

    return-void
.end method

.method public setSliderShadowAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderShadowAlpha:F

    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mStrokeAlpha:F

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
