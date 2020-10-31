.class public Lcom/miui/internal/view/SeekBaThumbShapeDrawable;
.super Lcom/miui/internal/view/SeekBarGradientDrawable;
.source "SeekBaThumbShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/SeekBaThumbShapeDrawable$SeekBaThumbShapeDrawableState;
    }
.end annotation


# static fields
.field private static final FULL_ALPHA:I = 0xff

.field private static final TAG:Ljava/lang/String; = "SeekBaThumbShape"

.field private static mShadowDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

.field private mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

.field private mPressedShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

.field private mScale:F

.field private mScaleFloatProperty:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/view/SeekBaThumbShapeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mShadowAlpha:F

.field private mShadowAlphaProperty:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/view/SeekBaThumbShapeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mUnPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

.field private mUnPressedShadowHideAnim:Lmiui/animation/physics/SpringAnimation;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/miui/internal/view/SeekBarGradientDrawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowAlpha:F

    new-instance v0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$1;

    const-string v1, "ShadowAlpha"

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$1;-><init>(Lcom/miui/internal/view/SeekBaThumbShapeDrawable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowAlphaProperty:Lmiui/animation/property/FloatProperty;

    new-instance v0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$2;-><init>(Lcom/miui/internal/view/SeekBaThumbShapeDrawable;)V

    iput-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    new-instance v0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$3;

    const-string v1, "Scale"

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$3;-><init>(Lcom/miui/internal/view/SeekBaThumbShapeDrawable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mScaleFloatProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {p0}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->initAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/view/SeekBarGradientDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowAlpha:F

    new-instance v0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$1;

    const-string v1, "ShadowAlpha"

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$1;-><init>(Lcom/miui/internal/view/SeekBaThumbShapeDrawable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowAlphaProperty:Lmiui/animation/property/FloatProperty;

    new-instance v0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$2;-><init>(Lcom/miui/internal/view/SeekBaThumbShapeDrawable;)V

    iput-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    new-instance v0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$3;

    const-string v1, "Scale"

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$3;-><init>(Lcom/miui/internal/view/SeekBaThumbShapeDrawable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mScaleFloatProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {p0}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->initAnim()V

    if-eqz p1, :cond_34

    sget-object v0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_34

    sget v0, Lcom/miui/internal/R$drawable;->sliding_btn_slider_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    :cond_34
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .registers 13

    invoke-virtual {p0}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sget-object v2, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v4, v2, v4

    sget-object v5, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v9, v3, 0x2

    add-int/2addr v8, v9

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v10, v4, 0x2

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v5, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v6, 0x437f0000    # 255.0f

    iget v7, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowAlpha:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget-object v5, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_47
    return-void
.end method

.method private initAnim()V
    .registers 7

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v1, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mScaleFloatProperty:Lmiui/animation/property/FloatProperty;

    const v2, 0x404c28f6    # 3.19f

    invoke-direct {v0, p0, v1, v2}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x4476bd71

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    const v2, 0x3b03126f    # 0.002f

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v3, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v3, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mScaleFloatProperty:Lmiui/animation/property/FloatProperty;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v3, v4}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v2, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v2, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowAlphaProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {v0, p0, v2, v4}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    const/high16 v3, 0x3b800000    # 0.00390625f

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowAlphaProperty:Lmiui/animation/property/FloatProperty;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v4, v5}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    iget-object v1, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-virtual {p0}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, p1}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->drawShadow(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mScale:F

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1}, Lcom/miui/internal/view/SeekBarGradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getScale()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mScale:F

    return v0
.end method

.method public getShadowAlpha()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowAlpha:F

    return v0
.end method

.method protected newSeekBarGradientState()Lcom/miui/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
    .registers 2

    new-instance v0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$SeekBaThumbShapeDrawableState;

    invoke-direct {v0}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$SeekBaThumbShapeDrawableState;-><init>()V

    return-object v0
.end method

.method public setScale(F)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mScale:F

    return-void
.end method

.method public setShadowAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mShadowAlpha:F

    return-void
.end method

.method protected startPressedAnim()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_d
    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_1a
    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_27
    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_34
    return-void
.end method

.method protected startUnPressedAnim()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_d
    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_1a
    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_27
    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_34
    return-void
.end method
