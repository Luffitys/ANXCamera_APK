.class public Lcom/miui/internal/view/CheckWidgetDrawableAnims;
.super Ljava/lang/Object;
.source "CheckWidgetDrawableAnims.java"


# static fields
.field private static final FULL_ALPHA:I = 0xff

.field private static final HIGH_STIFFNESS:F = 986.96f


# instance fields
.field private mBackgroundDisableAlpha:I

.field private mBackgroundNormalAlpha:I

.field private mBlackDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

.field private mBlueDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

.field private mCircleAlphaFloatProperty:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/view/CheckWidgetCircleDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mGrayDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

.field private mIsSingleSelection:Z

.field private mParent:Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

.field private mParentCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

.field private mParentContentAlphaFloatProperty:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mParentInvalidListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

.field private mParentPressAnim:Lmiui/animation/physics/SpringAnimation;

.field private mParentScaleFloatProperty:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mParentScaleInvalidListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

.field private mParentUnCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

.field private mParentUnPressAlphaAnim:Lmiui/animation/physics/SpringAnimation;

.field private mPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

.field private mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

.field private mScale:F

.field private mUnPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

.field private mUnPressedBlueHideAnim:Lmiui/animation/physics/SpringAnimation;

.field private mUnPressedBlueShowAnim:Lmiui/animation/physics/SpringAnimation;

.field private scaleFloatProperty:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/view/CheckWidgetDrawableAnims;",
            ">;"
        }
    .end annotation
.end field

.field private unPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V
    .registers 24

    move-object v0, p0

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mScale:F

    new-instance v1, Lcom/miui/internal/view/CheckWidgetDrawableAnims$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$1;-><init>(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)V

    iput-object v1, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    new-instance v1, Lcom/miui/internal/view/CheckWidgetDrawableAnims$2;

    invoke-direct {v1, p0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$2;-><init>(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)V

    iput-object v1, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentScaleInvalidListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    new-instance v1, Lcom/miui/internal/view/CheckWidgetDrawableAnims$3;

    const-string v2, "Scale"

    invoke-direct {v1, p0, v2}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$3;-><init>(Lcom/miui/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentScaleFloatProperty:Lmiui/animation/property/FloatProperty;

    new-instance v1, Lcom/miui/internal/view/CheckWidgetDrawableAnims$4;

    const-string v3, "ContentAlpha"

    invoke-direct {v1, p0, v3}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$4;-><init>(Lcom/miui/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentContentAlphaFloatProperty:Lmiui/animation/property/FloatProperty;

    new-instance v1, Lcom/miui/internal/view/CheckWidgetDrawableAnims$5;

    invoke-direct {v1, p0, v2}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$5;-><init>(Lcom/miui/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->scaleFloatProperty:Lmiui/animation/property/FloatProperty;

    new-instance v1, Lcom/miui/internal/view/CheckWidgetDrawableAnims$6;

    const-string v2, "Alpha"

    invoke-direct {v1, p0, v2}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$6;-><init>(Lcom/miui/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiui/animation/property/FloatProperty;

    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    iput v8, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBackgroundNormalAlpha:I

    iput v9, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBackgroundDisableAlpha:I

    move v11, p2

    iput-boolean v11, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    new-instance v12, Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    move-object v1, v12

    move/from16 v2, p3

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;-><init>(IIIIII)V

    iput-object v12, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    iget v1, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBackgroundNormalAlpha:I

    invoke-virtual {v12, v1}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    new-instance v1, Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    move/from16 v2, p4

    invoke-direct {v1, v2, v8, v9}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;-><init>(III)V

    iput-object v1, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v1, v10}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    new-instance v1, Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    move/from16 v3, p5

    invoke-direct {v1, v3, v8, v9}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;-><init>(III)V

    iput-object v1, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    const/16 v4, 0xff

    invoke-virtual {v1, v4}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    move-object v1, p1

    iput-object v1, v0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParent:Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-direct {p0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->initAnim()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParent:Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lmiui/animation/physics/SpringAnimation;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiui/animation/physics/SpringAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lmiui/animation/physics/SpringAnimation;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    return-object v0
.end method

.method private initAnim()V
    .registers 12

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->scaleFloatProperty:Lmiui/animation/property/FloatProperty;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v0, p0, v1, v2}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x4476bd71

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v3, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setFinalPosition(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    const v4, 0x3b03126f    # 0.002f

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v5, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentScaleInvalidListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v5}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v5, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->scaleFloatProperty:Lmiui/animation/property/FloatProperty;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v5, v6}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    new-instance v5, Lcom/miui/internal/view/CheckWidgetDrawableAnims$7;

    invoke-direct {v5, p0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$7;-><init>(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)V

    invoke-virtual {v0, v5}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v5, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParent:Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    iget-object v7, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentContentAlphaFloatProperty:Lmiui/animation/property/FloatProperty;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {v0, v5, v7, v8}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiui/animation/physics/SpringAnimation;

    const/high16 v5, 0x3b800000    # 0.00390625f

    invoke-virtual {v0, v5}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v7, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v7}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v7, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    iget-object v8, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiui/animation/property/FloatProperty;

    const v9, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v7, v8, v9}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v5}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v7, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v7}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v7, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    iget-object v8, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiui/animation/property/FloatProperty;

    const/4 v9, 0x0

    invoke-direct {v0, v7, v8, v9}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v5}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v7, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v7}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v7, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    iget-object v8, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {v0, v7, v8, v6}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v7, 0x3f333333    # 0.7f

    invoke-virtual {v0, v7}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v5}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v7, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v7}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v7, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParent:Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    iget-object v8, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentContentAlphaFloatProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {v0, v7, v8, v6}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v7, 0x43db51ec

    invoke-virtual {v0, v7}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v5}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v8, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v8}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v8, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    iget-object v10, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {v0, v8, v10, v9}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v5}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v5, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v5}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v5, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParent:Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    iget-object v8, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentScaleFloatProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {v0, v5, v8, v6}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v7}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v2, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    iget-boolean v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    if-eqz v0, :cond_18f

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringAnimation;->setStartVelocity(F)Lmiui/animation/physics/DynamicAnimation;

    goto :goto_196

    :cond_18f
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringAnimation;->setStartVelocity(F)Lmiui/animation/physics/DynamicAnimation;

    :goto_196
    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v2, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParent:Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    iget-object v5, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentScaleFloatProperty:Lmiui/animation/property/FloatProperty;

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v0, v2, v5, v6}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentScaleInvalidListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getScale()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mScale:F

    return v0
.end method

.method public setBounds(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setScale(F)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setScale(F)V

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setScale(F)V

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setScale(F)V

    iput p1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mScale:F

    return-void
.end method

.method protected startPressedAnim(ZZ)V
    .registers 5

    if-eqz p2, :cond_97

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_12

    goto/16 :goto_97

    :cond_12
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_1f
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_2c
    if-nez p1, :cond_3b

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_3b
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_48
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_55
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_62
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_6f
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_7c
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_89
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_96
    return-void

    :cond_97
    :goto_97
    return-void
.end method

.method protected startUnPressedAnim(ZZ)V
    .registers 7

    if-eqz p2, :cond_b2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_12

    goto/16 :goto_b2

    :cond_12
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_1f
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_2c
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_39
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_46
    if-eqz p1, :cond_85

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_55
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/internal/view/CheckWidgetDrawableAnims$8;

    invoke-direct {v1, p0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims$8;-><init>(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringAnimation;->setStartVelocity(F)Lmiui/animation/physics/DynamicAnimation;

    goto :goto_ac

    :cond_7d
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringAnimation;->setStartVelocity(F)Lmiui/animation/physics/DynamicAnimation;

    goto :goto_ac

    :cond_85
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_92
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9f

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_9f
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_ac

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_ac
    :goto_ac
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    return-void

    :cond_b2
    :goto_b2
    const/high16 v0, 0x437f0000    # 255.0f

    if-eqz p1, :cond_c8

    iget-object v1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    iget-object v2, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v2}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/animation/physics/SpringForce;->getFinalPosition()F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    goto :goto_d9

    :cond_c8
    iget-object v1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    iget-object v2, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v2}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/animation/physics/SpringForce;->getFinalPosition()F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    :goto_d9
    return-void
.end method

.method protected verifyChecked(ZZ)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_26

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    goto :goto_1e

    :cond_14
    iget-object v1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    :goto_1e
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    iget v1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBackgroundNormalAlpha:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    goto :goto_37

    :cond_26
    iget-object v1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lcom/miui/internal/view/CheckWidgetCircleDrawable;

    iget v1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mBackgroundDisableAlpha:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    :goto_37
    return-void
.end method
