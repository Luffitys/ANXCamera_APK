.class Lmiui/widget/BubbleBgView$Bubble;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DURATION:I = 0xbb8

.field private static final MIN_DURATION:I = 0x7d0

.field private static final RANDOM:Ljava/util/Random;


# instance fields
.field private final cX:I

.field private final cY:I

.field private final color:I

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private final maxX:I

.field private final maxY:I

.field private final minX:I

.field private final minY:I

.field private final radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lmiui/widget/BubbleBgView$Bubble;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/widget/BubbleBgView$Bubble;->cX:I

    iput p2, p0, Lmiui/widget/BubbleBgView$Bubble;->cY:I

    iput p3, p0, Lmiui/widget/BubbleBgView$Bubble;->radius:I

    add-int/2addr p4, p1

    iput p4, p0, Lmiui/widget/BubbleBgView$Bubble;->minX:I

    add-int/2addr p5, p1

    iput p5, p0, Lmiui/widget/BubbleBgView$Bubble;->maxX:I

    add-int/2addr p6, p2

    iput p6, p0, Lmiui/widget/BubbleBgView$Bubble;->minY:I

    add-int/2addr p7, p2

    iput p7, p0, Lmiui/widget/BubbleBgView$Bubble;->maxY:I

    iput p8, p0, Lmiui/widget/BubbleBgView$Bubble;->color:I

    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->resetAnimator()V

    return-void
.end method

.method static synthetic access$100(Lmiui/widget/BubbleBgView$Bubble;)I
    .locals 0

    iget p0, p0, Lmiui/widget/BubbleBgView$Bubble;->color:I

    return p0
.end method

.method static synthetic access$200(Lmiui/widget/BubbleBgView$Bubble;)F
    .locals 0

    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->getCurrentX()F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lmiui/widget/BubbleBgView$Bubble;)F
    .locals 0

    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->getCurrentY()F

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lmiui/widget/BubbleBgView$Bubble;)I
    .locals 0

    iget p0, p0, Lmiui/widget/BubbleBgView$Bubble;->radius:I

    return p0
.end method

.method static synthetic access$500(Lmiui/widget/BubbleBgView$Bubble;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->resetAnimator()V

    return-void
.end method

.method private getCurrentX()F
    .locals 1

    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    iget p0, p0, Lmiui/widget/BubbleBgView$Bubble;->cX:I

    int-to-float p0, p0

    return p0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private getCurrentY()F
    .locals 1

    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    iget p0, p0, Lmiui/widget/BubbleBgView$Bubble;->cY:I

    int-to-float p0, p0

    return p0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private resetAnimator()V
    .locals 10

    sget-object v0, Lmiui/widget/BubbleBgView$Bubble;->RANDOM:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x7d0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v4, v3, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lmiui/widget/BubbleBgView$Bubble$1;

    invoke-direct {v2, p0}, Lmiui/widget/BubbleBgView$Bubble$1;-><init>(Lmiui/widget/BubbleBgView$Bubble;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    sget-object v0, Lmiui/widget/BubbleBgView$Bubble;->RANDOM:Ljava/util/Random;

    iget v2, p0, Lmiui/widget/BubbleBgView$Bubble;->maxX:I

    iget v4, p0, Lmiui/widget/BubbleBgView$Bubble;->minX:I

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v2, p0, Lmiui/widget/BubbleBgView$Bubble;->minX:I

    add-int/2addr v0, v2

    sget-object v2, Lmiui/widget/BubbleBgView$Bubble;->RANDOM:Ljava/util/Random;

    iget v4, p0, Lmiui/widget/BubbleBgView$Bubble;->maxY:I

    iget v6, p0, Lmiui/widget/BubbleBgView$Bubble;->minY:I

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget v4, p0, Lmiui/widget/BubbleBgView$Bubble;->minY:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    const/4 v6, 0x3

    new-array v7, v6, [F

    iget v8, p0, Lmiui/widget/BubbleBgView$Bubble;->cX:I

    int-to-float v9, v8

    aput v9, v7, v5

    int-to-float v0, v0

    aput v0, v7, v1

    int-to-float v0, v8

    aput v0, v7, v3

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    new-array v4, v6, [F

    iget v6, p0, Lmiui/widget/BubbleBgView$Bubble;->cY:I

    int-to-float v7, v6

    aput v7, v4, v5

    int-to-float v2, v2

    aput v2, v4, v1

    int-to-float v1, v6

    aput v1, v4, v3

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
