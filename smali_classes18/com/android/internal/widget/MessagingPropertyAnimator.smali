.class public Lcom/android/internal/widget/MessagingPropertyAnimator;
.super Ljava/lang/Object;
.source "MessagingPropertyAnimator.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field private static final APPEAR_ANIMATION_LENGTH:J = 0xd2L

.field private static final CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

.field private static final TAG_ALPHA_ANIMATOR:I = 0x10204d0

.field private static final TAG_FIRST_LAYOUT:I = 0x10204d1

.field private static final TAG_LAYOUT_TOP:I = 0x10204d2

.field private static final TAG_TOP:I = 0x10204d4

.field private static final TAG_TOP_ANIMATOR:I = 0x10204d3

.field private static final TOP:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/internal/widget/-$$Lambda$MessagingPropertyAnimator$7coWc0tjIUC7grCXucNFbpYTxDI;->INSTANCE:Lcom/android/internal/widget/-$$Lambda$MessagingPropertyAnimator$7coWc0tjIUC7grCXucNFbpYTxDI;

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    new-instance v0, Lcom/android/internal/widget/MessagingPropertyAnimator$1;

    const-string v1, "top"

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MessagingPropertyAnimator$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->TOP:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateLayerType(Landroid/view/View;Z)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;)V
    .registers 6

    const v0, 0x10204d0

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_19

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_46

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    sget-object v3, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xd2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/internal/widget/MessagingPropertyAnimator$3;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/MessagingPropertyAnimator$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateLayerType(Landroid/view/View;Z)V

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_46
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 9

    const v0, 0x10204d0

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_51

    invoke-static {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isHidingAnimated(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_51

    :cond_22
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xd2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/internal/widget/MessagingPropertyAnimator$4;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator$4;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {p0, v5}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateLayerType(Landroid/view/View;Z)V

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_51
    :goto_51
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_59

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_59
    return-void
.end method

.method public static getLayoutTop(Landroid/view/View;)I
    .registers 3

    const v0, 0x10204d2

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_10

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v1

    return v1

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getTop(Landroid/view/View;)I
    .registers 3

    const v0, 0x10204d4

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    return v1

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static isAnimatingAlpha(Landroid/view/View;)Z
    .registers 2

    const v0, 0x10204d0

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static isAnimatingTranslation(Landroid/view/View;)Z
    .registers 2

    const v0, 0x10204d3

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static isFirstLayout(Landroid/view/View;)Z
    .registers 3

    const v0, 0x10204d1

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_d

    const/4 v1, 0x1

    return v1

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static isHidingAnimated(Landroid/view/View;)Z
    .registers 2

    instance-of v0, p0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->isHidingAnimated()Z

    move-result v0

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$static$0(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10203c5

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static recycle(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setFirstLayout(Landroid/view/View;Z)V

    return-void
.end method

.method public static setClippingDeactivated(Landroid/view/View;Z)V
    .registers 3

    sget-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    return-void
.end method

.method private static setFirstLayout(Landroid/view/View;Z)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x10204d1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    return-void
.end method

.method private static setLayoutTop(Landroid/view/View;I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x10204d2

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    return-void
.end method

.method public static setToLaidOutPosition(Landroid/view/View;)V
    .registers 2

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getLayoutTop(Landroid/view/View;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    return-void
.end method

.method private static setTop(Landroid/view/View;I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x10204d4

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateTopAndBottom(Landroid/view/View;)V

    return-void
.end method

.method public static startLocalTranslationFrom(Landroid/view/View;ILandroid/view/animation/Interpolator;)V
    .registers 5

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getLayoutTop(Landroid/view/View;)I

    move-result v1

    invoke-static {p0, v0, v1, p2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static startLocalTranslationTo(Landroid/view/View;ILandroid/view/animation/Interpolator;)V
    .registers 5

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    add-int v1, v0, p1

    invoke-static {p0, v0, v1, p2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method private static startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V
    .registers 11

    const v0, 0x10204d3

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_4f

    if-eq p1, p2, :cond_4f

    invoke-static {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isHidingAnimated(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_4f

    :cond_23
    sget-object v2, Lcom/android/internal/widget/MessagingPropertyAnimator;->TOP:Landroid/util/IntProperty;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p2, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    invoke-virtual {v2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xd2

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/internal/widget/MessagingPropertyAnimator$2;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/MessagingPropertyAnimator$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {p0, v4}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setClippingDeactivated(Landroid/view/View;Z)V

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_4f
    :goto_4f
    invoke-static {p0, p2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    return-void
.end method

.method private static updateLayerType(Landroid/view/View;Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_18

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-ne v0, v2, :cond_18

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_18
    :goto_18
    return-void
.end method

.method private static updateTopAndBottom(Landroid/view/View;)V
    .registers 4

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTop(I)V

    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Landroid/view/View;->setBottom(I)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12

    invoke-static {p1, p3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setLayoutTop(Landroid/view/View;I)V

    invoke-static {p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isFirstLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setFirstLayout(Landroid/view/View;Z)V

    invoke-static {p1, p3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    return-void

    :cond_11
    invoke-static {p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    sget-object v1, Lcom/android/internal/widget/MessagingLayout;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0, p3, v1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    return-void
.end method
