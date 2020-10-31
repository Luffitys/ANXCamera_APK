.class Lmiui/widget/BubbleBgView$Bubble;
.super Ljava/lang/Object;
.source "BubbleBgView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/BubbleBgView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bubble"
.end annotation


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
    .registers 3

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lmiui/widget/BubbleBgView$Bubble;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/widget/BubbleBgView$Bubble;->cX:I

    iput p2, p0, Lmiui/widget/BubbleBgView$Bubble;->cY:I

    iput p3, p0, Lmiui/widget/BubbleBgView$Bubble;->radius:I

    add-int v0, p4, p1

    iput v0, p0, Lmiui/widget/BubbleBgView$Bubble;->minX:I

    add-int v0, p5, p1

    iput v0, p0, Lmiui/widget/BubbleBgView$Bubble;->maxX:I

    add-int v0, p6, p2

    iput v0, p0, Lmiui/widget/BubbleBgView$Bubble;->minY:I

    add-int v0, p7, p2

    iput v0, p0, Lmiui/widget/BubbleBgView$Bubble;->maxY:I

    iput p8, p0, Lmiui/widget/BubbleBgView$Bubble;->color:I

    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->resetAnimator()V

    return-void
.end method

.method static synthetic access$100(Lmiui/widget/BubbleBgView$Bubble;)I
    .registers 2

    iget v0, p0, Lmiui/widget/BubbleBgView$Bubble;->color:I

    return v0
.end method

.method static synthetic access$200(Lmiui/widget/BubbleBgView$Bubble;)F
    .registers 2

    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->getCurrentX()F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lmiui/widget/BubbleBgView$Bubble;)F
    .registers 2

    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->getCurrentY()F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lmiui/widget/BubbleBgView$Bubble;)I
    .registers 2

    iget v0, p0, Lmiui/widget/BubbleBgView$Bubble;->radius:I

    return v0
.end method

.method static synthetic access$500(Lmiui/widget/BubbleBgView$Bubble;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->resetAnimator()V

    return-void
.end method

.method private getCurrentX()F
    .registers 3

    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_8

    iget v0, p0, Lmiui/widget/BubbleBgView$Bubble;->cX:I

    int-to-float v0, v0

    return v0

    :cond_8
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private getCurrentY()F
    .registers 3

    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_8

    iget v0, p0, Lmiui/widget/BubbleBgView$Bubble;->cY:I

    int-to-float v0, v0

    return v0

    :cond_8
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private resetAnimator()V
    .registers 14

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

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v5, v4, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v7, 0x1

    aput-object v2, v5, v7

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Lmiui/widget/BubbleBgView$Bubble$1;

    invoke-direct {v5, p0}, Lmiui/widget/BubbleBgView$Bubble$1;-><init>(Lmiui/widget/BubbleBgView$Bubble;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    sget-object v3, Lmiui/widget/BubbleBgView$Bubble;->RANDOM:Ljava/util/Random;

    iget v5, p0, Lmiui/widget/BubbleBgView$Bubble;->maxX:I

    iget v8, p0, Lmiui/widget/BubbleBgView$Bubble;->minX:I

    sub-int/2addr v5, v8

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iget v5, p0, Lmiui/widget/BubbleBgView$Bubble;->minX:I

    add-int/2addr v3, v5

    sget-object v5, Lmiui/widget/BubbleBgView$Bubble;->RANDOM:Ljava/util/Random;

    iget v8, p0, Lmiui/widget/BubbleBgView$Bubble;->maxY:I

    iget v9, p0, Lmiui/widget/BubbleBgView$Bubble;->minY:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v8, p0, Lmiui/widget/BubbleBgView$Bubble;->minY:I

    add-int/2addr v5, v8

    iget-object v8, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/ValueAnimator;

    const/4 v9, 0x3

    new-array v10, v9, [F

    iget v11, p0, Lmiui/widget/BubbleBgView$Bubble;->cX:I

    int-to-float v12, v11

    aput v12, v10, v6

    int-to-float v12, v3

    aput v12, v10, v7

    int-to-float v11, v11

    aput v11, v10, v4

    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v8, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/ValueAnimator;

    new-array v9, v9, [F

    iget v10, p0, Lmiui/widget/BubbleBgView$Bubble;->cY:I

    int-to-float v11, v10

    aput v11, v9, v6

    int-to-float v6, v5

    aput v6, v9, v7

    int-to-float v6, v10

    aput v6, v9, v4

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v4, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
