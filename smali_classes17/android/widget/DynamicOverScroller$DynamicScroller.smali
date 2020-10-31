.class Landroid/widget/DynamicOverScroller$DynamicScroller;
.super Landroid/widget/OverScroller$SplineOverScroller;
.source "DynamicOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DynamicOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DynamicScroller"
.end annotation


# instance fields
.field private mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

.field private mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

.field private mSpringAnimation:Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

.field private mValue:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0}, Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;-><init>()V

    iput-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mValue:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mValue:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;-><init>(Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSpringAnimation:Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Lcom/miui/internal/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/miui/internal/dynamicanimation/animation/SpringForce;)Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSpringAnimation:Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSpringAnimation:Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lcom/miui/internal/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v2}, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/miui/internal/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSpringAnimation:Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lcom/miui/internal/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v0, v2}, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/miui/internal/dynamicanimation/animation/SpringForce;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mValue:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0, v2}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;-><init>(Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setMinimumVisibleChange(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    const v1, 0x3ef3cf3e

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setFriction(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/DynamicOverScroller$DynamicScroller;)Landroid/widget/DynamicOverScroller$OverScrollHandler;
    .registers 2

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/DynamicOverScroller$DynamicScroller;)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
    .registers 2

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DynamicOverScroller$DynamicScroller;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->resetHandler()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/DynamicOverScroller$DynamicScroller;IIFII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/DynamicOverScroller$DynamicScroller;->doSpring(IIFII)V

    return-void
.end method

.method private doFling(IIIII)V
    .registers 15

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setStartValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    int-to-long v0, p1

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v2}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictNaturalDest()F

    move-result v2

    float-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p4

    cmp-long v2, v0, v2

    if-lez v2, :cond_26

    move v2, p4

    iget-object v3, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    sub-int v4, p4, p1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictTimeTo(F)F

    move-result v3

    float-to-int v3, v3

    goto :goto_3f

    :cond_26
    int-to-long v2, p3

    cmp-long v2, v0, v2

    if-gez v2, :cond_37

    move v2, p3

    iget-object v3, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    sub-int v4, p3, p1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictTimeTo(F)F

    move-result v3

    float-to-int v3, v3

    goto :goto_3f

    :cond_37
    long-to-int v2, v0

    iget-object v3, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v3}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictDuration()F

    move-result v3

    float-to-int v3, v3

    :goto_3f
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setFinished(Z)V

    int-to-float v5, p2

    invoke-virtual {p0, v5}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setCurrVelocity(F)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setStartTime(J)V

    invoke-virtual {p0, p1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setCurrentPosition(I)V

    invoke-virtual {p0, p1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setStart(I)V

    invoke-virtual {p0, v3}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setDuration(I)V

    invoke-virtual {p0, v2}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setFinal(I)V

    invoke-virtual {p0, v4}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setState(I)V

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-instance v6, Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget-object v7, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    int-to-float v8, p2

    invoke-direct {v6, v7, p1, v8}, Landroid/widget/DynamicOverScroller$OverScrollHandler;-><init>(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;IF)V

    iput-object v6, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    new-instance v7, Landroid/widget/DynamicOverScroller$DynamicScroller$1;

    invoke-direct {v7, p0, p3, p4, p5}, Landroid/widget/DynamicOverScroller$DynamicScroller$1;-><init>(Landroid/widget/DynamicOverScroller$DynamicScroller;III)V

    invoke-virtual {v6, v7}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->setOnFinishedListener(Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;)V

    iget-object v6, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-virtual {v6, v4}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->setMinValue(I)V

    iget-object v6, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->setMaxValue(I)V

    iget-object v6, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-virtual {v6}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->start()V

    return-void
.end method

.method private doSpring(IIFII)V
    .registers 9

    const/high16 v0, 0x457a0000    # 4000.0f

    cmpl-float v0, p3, v0

    const/4 v1, 0x0

    if-lez v0, :cond_17

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "%f is too fast for spring, slow down"

    invoke-static {v2, v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p3, 0x457a0000    # 4000.0f

    :cond_17
    invoke-virtual {p0, v1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setFinished(Z)V

    invoke-virtual {p0, p3}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setCurrVelocity(F)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setStartTime(J)V

    invoke-virtual {p0, p2}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setCurrentPosition(I)V

    invoke-virtual {p0, p2}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setStart(I)V

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setDuration(I)V

    invoke-virtual {p0, p4}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setFinal(I)V

    invoke-virtual {p0, p1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setState(I)V

    new-instance v0, Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSpringAnimation:Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, v1, p2, p3}, Landroid/widget/DynamicOverScroller$OverScrollHandler;-><init>(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;IF)V

    iput-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSpringAnimation:Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lcom/miui/internal/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-virtual {v1, p4}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->getOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lcom/miui/internal/dynamicanimation/animation/SpringForce;

    if-eqz p5, :cond_77

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_67

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    sub-int v1, p4, p5

    invoke-virtual {v0, v1}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->setMinValue(I)V

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->setMaxValue(I)V

    goto :goto_77

    :cond_67
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->setMinValue(I)V

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    add-int v1, p4, p5

    invoke-virtual {v0, v1}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->setMaxValue(I)V

    :cond_77
    :goto_77
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-virtual {v0}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->start()V

    return-void
.end method

.method private resetHandler()V
    .registers 4

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    if-eqz v0, :cond_47

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-virtual {v2}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->getAnimation()Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget v2, v2, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget v2, v2, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "resetting current handler: state(%d), anim(%s), value(%d), velocity(%f)"

    invoke-static {v1, v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-virtual {v0}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    :cond_47
    return-void
.end method

.method private startAfterEdge(IIIII)V
    .registers 22

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string/jumbo v1, "startAfterEdge: start(%d) velocity(%d) boundary(%d, %d) over(%d)"

    invoke-static {v1, v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-le v7, v8, :cond_3e

    if-ge v7, v9, :cond_3e

    invoke-virtual {v6, v3}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setFinished(Z)V

    return-void

    :cond_3e
    if-le v7, v9, :cond_42

    move v0, v3

    goto :goto_43

    :cond_42
    move v0, v2

    :goto_43
    move v11, v0

    if-eqz v11, :cond_48

    move v0, v9

    goto :goto_49

    :cond_48
    move v0, v8

    :goto_49
    move v12, v0

    sub-int v13, v7, v12

    if-eqz v10, :cond_56

    invoke-static {v13}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    mul-int/2addr v0, v10

    if-ltz v0, :cond_56

    move v2, v3

    :cond_56
    move v14, v2

    if-eqz v14, :cond_6c

    const-string/jumbo v0, "spring forward"

    invoke-static {v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    const/4 v1, 0x2

    int-to-float v3, v10

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v4, v12

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/DynamicOverScroller$DynamicScroller;->doSpring(IIFII)V

    goto :goto_b3

    :cond_6c
    iget-object v0, v6, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    int-to-float v1, v7

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setStartValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, v6, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    int-to-float v1, v10

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v0, v6, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictNaturalDest()F

    move-result v15

    if-eqz v11, :cond_85

    int-to-float v0, v9

    cmpg-float v0, v15, v0

    if-ltz v0, :cond_8c

    :cond_85
    if-nez v11, :cond_a1

    int-to-float v0, v8

    cmpl-float v0, v15, v0

    if-lez v0, :cond_a1

    :cond_8c
    const-string v0, "fling to content"

    invoke-static {v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/DynamicOverScroller$DynamicScroller;->doFling(IIIII)V

    goto :goto_b3

    :cond_a1
    const-string/jumbo v0, "spring backward"

    invoke-static {v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    const/4 v1, 0x1

    int-to-float v3, v10

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v4, v12

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/DynamicOverScroller$DynamicScroller;->doSpring(IIFII)V

    :goto_b3
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->continueWhenFinished()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "checking have more work when finish"

    invoke-static {v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->update()Z

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method extendDuration(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    return-void
.end method

.method finish()V
    .registers 2

    const-string v0, "finish scroller"

    invoke-static {v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->getFinal()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setCurrentPosition(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setFinished(Z)V

    invoke-direct {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->resetHandler()V

    return-void
.end method

.method fling(IIIII)V
    .registers 13

    int-to-float v0, p2

    const v1, 0x3f866666    # 1.05f

    mul-float/2addr v0, v1

    float-to-int p2, v0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "FLING: start(%d) velocity(%d) boundary(%d, %d) over(%d)"

    invoke-static {v1, v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->resetHandler()V

    if-nez p2, :cond_46

    invoke-virtual {p0, p1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setCurrentPosition(I)V

    invoke-virtual {p0, p1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setStart(I)V

    invoke-virtual {p0, p1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setFinal(I)V

    invoke-virtual {p0, v2}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setDuration(I)V

    invoke-virtual {p0, v3}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setFinished(Z)V

    return-void

    :cond_46
    if-gt p1, p4, :cond_55

    if-ge p1, p3, :cond_4b

    goto :goto_55

    :cond_4b
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/widget/DynamicOverScroller$DynamicScroller;->doFling(IIIII)V

    return-void

    :cond_55
    :goto_55
    move-object v1, p0

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p2

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/widget/DynamicOverScroller$DynamicScroller;->startAfterEdge(IIIII)V

    return-void
.end method

.method notifyEdgeReached(III)V
    .registers 11

    invoke-virtual {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->getState()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    if-eqz v0, :cond_d

    invoke-direct {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->resetHandler()V

    :cond_d
    invoke-virtual {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v5, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/DynamicOverScroller$DynamicScroller;->startAfterEdge(IIIII)V

    :cond_1a
    return-void
.end method

.method setFinalPosition(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method setFriction(F)V
    .registers 3

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0, p1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setFriction(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    return-void
.end method

.method springback(III)Z
    .registers 11

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v0, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "SPRING_BACK start(%d) boundary(%d, %d)"

    invoke-static {v1, v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    if-eqz v0, :cond_24

    invoke-direct {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->resetHandler()V

    :cond_24
    if-ge p1, p2, :cond_30

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/DynamicOverScroller$DynamicScroller;->doSpring(IIFII)V

    goto :goto_4b

    :cond_30
    if-le p1, p3, :cond_3c

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/DynamicOverScroller$DynamicScroller;->doSpring(IIFII)V

    goto :goto_4b

    :cond_3c
    invoke-virtual {p0, p1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setCurrentPosition(I)V

    invoke-virtual {p0, p1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setStart(I)V

    invoke-virtual {p0, p1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setFinal(I)V

    invoke-virtual {p0, v2}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setDuration(I)V

    invoke-virtual {p0, v6}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setFinished(Z)V

    :goto_4b
    invoke-virtual {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v6

    return v0
.end method

.method update()Z
    .registers 4

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    if-nez v0, :cond_c

    const-string/jumbo v0, "no handler found, aborting"

    invoke-static {v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_c
    invoke-virtual {v0}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->update()Z

    move-result v0

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget v1, v1, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mValue:I

    invoke-virtual {p0, v1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setCurrentPosition(I)V

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget v1, v1, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mVelocity:F

    invoke-virtual {p0, v1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setCurrVelocity(F)V

    invoke-virtual {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_45

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget v1, v1, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mValue:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget v2, v2, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_45

    const-string v1, "State Changed: BALLISTIC -> CUBIC"

    invoke-static {v1}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->setState(I)V

    :cond_45
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method
