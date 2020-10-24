.class public Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;
.super Lcom/miui/internal/view/SeekBarGradientDrawable;
.source ""


# static fields
.field private static final FULL_ALPHA:I = 0xff


# instance fields
.field private mBlackAlpha:F

.field private mBlackAlphaFloatProperty:Lmiui/animation/property/FloatProperty;

.field private mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

.field private mUnPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/internal/view/SeekBarGradientDrawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlpha:F

    new-instance v0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$1;

    const-string v1, "BlackAlpha"

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$1;-><init>(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlphaFloatProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {p0}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->initAnim()V

    invoke-direct {p0}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->initMaskDrawable()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/view/SeekBarGradientDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlpha:F

    new-instance p1, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$1;

    const-string p2, "BlackAlpha"

    invoke-direct {p1, p0, p2}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$1;-><init>(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlphaFloatProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {p0}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->initAnim()V

    invoke-direct {p0}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->initMaskDrawable()V

    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private initAnim()V
    .locals 6

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v1, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlphaFloatProperty:Lmiui/animation/property/FloatProperty;

    const v2, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, p0, v1, v2}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x4476bd71

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    const/high16 v3, 0x3b800000    # 0.00390625f

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    new-instance v4, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$2;

    invoke-direct {v4, p0}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$2;-><init>(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;)V

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlphaFloatProperty:Lmiui/animation/property/FloatProperty;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v4, v5}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    new-instance v1, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$3;

    invoke-direct {v1, p0}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$3;-><init>(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;)V

    invoke-virtual {v0, v1}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    return-void
.end method

.method private initMaskDrawable()V
    .locals 3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getColors()[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getShape()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object p0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->drawMask(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBlackAlpha()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlpha:F

    return p0
.end method

.method protected newSeekBarGradientState()Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
    .locals 0

    new-instance p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$SeekBarBackGroundShapeDrawableState;

    invoke-direct {p0}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$SeekBarBackGroundShapeDrawableState;-><init>()V

    return-object p0
.end method

.method public setBlackAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlpha:F

    return-void
.end method

.method protected startPressedAnim()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimation;->start()V

    return-void
.end method

.method protected startUnPressedAnim()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimation;->start()V

    return-void
.end method
