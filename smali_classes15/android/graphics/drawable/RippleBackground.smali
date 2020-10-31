.class Landroid/graphics/drawable/RippleBackground;
.super Landroid/graphics/drawable/RippleComponent;
.source "RippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleBackground$BackgroundProperty;
    }
.end annotation


# static fields
.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

.field private static final OPACITY_DURATION:I = 0x50


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mFocused:Z

.field private mHovered:Z

.field private mIsBounded:Z

.field private mOpacity:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/graphics/drawable/RippleBackground$1;

    const-string/jumbo v1, "opacity"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleBackground$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;Z)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleComponent;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mFocused:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mHovered:Z

    iput-boolean p3, p0, Landroid/graphics/drawable/RippleBackground;->mIsBounded:Z

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/RippleBackground;)F
    .registers 2

    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    return v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/RippleBackground;F)F
    .registers 2

    iput p1, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    return p1
.end method

.method private onStateChanged()V
    .registers 5

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mFocused:Z

    if-eqz v0, :cond_8

    const v0, 0x3f19999a    # 0.6f

    goto :goto_11

    :cond_8
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mHovered:Z

    if-eqz v0, :cond_10

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    :cond_1b
    sget-object v1, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x50

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    sget-object v2, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 7

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_20

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, p0, Landroid/graphics/drawable/RippleBackground;->mTargetRadius:F

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_20
    return-void
.end method

.method public isVisible()Z
    .registers 3

    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public jumpToFinal()V
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    :cond_a
    return-void
.end method

.method public setState(ZZZ)V
    .registers 7

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mFocused:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_e

    if-eqz p1, :cond_c

    if-nez p3, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    move p1, v0

    :cond_e
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mHovered:Z

    if-nez v0, :cond_19

    if-eqz p2, :cond_17

    if-nez p3, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    move p2, v1

    :cond_19
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mHovered:Z

    if-ne v0, p2, :cond_21

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mFocused:Z

    if-eq v0, p1, :cond_28

    :cond_21
    iput-boolean p2, p0, Landroid/graphics/drawable/RippleBackground;->mHovered:Z

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleBackground;->mFocused:Z

    invoke-direct {p0}, Landroid/graphics/drawable/RippleBackground;->onStateChanged()V

    :cond_28
    return-void
.end method
