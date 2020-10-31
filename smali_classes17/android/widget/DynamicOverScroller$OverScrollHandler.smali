.class Landroid/widget/DynamicOverScroller$OverScrollHandler;
.super Ljava/lang/Object;
.source "DynamicOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DynamicOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverScrollHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;,
        Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;
    }
.end annotation


# instance fields
.field private mAnimMaxValue:F

.field private mAnimMinValue:F

.field mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<",
            "*>;"
        }
    .end annotation
.end field

.field private mLastUpdateTime:J

.field private final mMaxLegalValue:I

.field private final mMinLegalValue:I

.field private mMonitor:Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;

.field private mOnFinishedListener:Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;

.field mStartValue:I

.field mValue:I

.field mVelocity:F


# direct methods
.method constructor <init>(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;IF)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<",
            "*>;IF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;-><init>(Landroid/widget/DynamicOverScroller$OverScrollHandler;Landroid/widget/DynamicOverScroller$1;)V

    iput-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMonitor:Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;

    iput-object p1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    const v0, -0x800001

    invoke-virtual {p1, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iput p2, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mStartValue:I

    iput p3, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mVelocity:F

    if-lez p2, :cond_28

    const/high16 v0, -0x80000000

    add-int/2addr v0, p2

    const v1, 0x7fffffff

    goto :goto_36

    :cond_28
    if-gez p2, :cond_31

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    add-int/2addr v1, p2

    goto :goto_36

    :cond_31
    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    :goto_36
    iput v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMinLegalValue:I

    iput v1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMaxLegalValue:I

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v2, p3}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method static synthetic access$500(Landroid/widget/DynamicOverScroller$OverScrollHandler;)F
    .registers 2

    iget v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimMinValue:F

    return v0
.end method

.method static synthetic access$600(Landroid/widget/DynamicOverScroller$OverScrollHandler;)F
    .registers 2

    iget v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimMaxValue:F

    return v0
.end method


# virtual methods
.method cancel()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mLastUpdateTime:J

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMonitor:Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->removeUpdateListener(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    return-void
.end method

.method continueWhenFinished()Z
    .registers 4

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mOnFinishedListener:Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;

    if-eqz v0, :cond_e

    iget v1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mValue:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mVelocity:F

    invoke-interface {v0, v1, v2}, Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;->whenFinished(FF)Z

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method getAnimation()Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    return-object v0
.end method

.method getOffset(I)I
    .registers 3

    iget v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mStartValue:I

    sub-int v0, p1, v0

    return v0
.end method

.method setMaxValue(I)V
    .registers 4

    iget v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMaxLegalValue:I

    if-le p1, v0, :cond_6

    iget p1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMaxLegalValue:I

    :cond_6
    iget v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mStartValue:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v1, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iput v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimMaxValue:F

    return-void
.end method

.method setMinValue(I)V
    .registers 4

    iget v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMinLegalValue:I

    if-ge p1, v0, :cond_6

    iget p1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMinLegalValue:I

    :cond_6
    iget v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mStartValue:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v1, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iput v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimMinValue:F

    return-void
.end method

.method setOnFinishedListener(Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mOnFinishedListener:Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;

    return-void
.end method

.method start()V
    .registers 3

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMonitor:Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->start(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mLastUpdateTime:J

    return-void
.end method

.method update()Z
    .registers 10

    iget-wide v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mLastUpdateTime:J

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    const/4 v5, 0x1

    if-nez v4, :cond_19

    const-string/jumbo v4, "update done in this frame, dropping current update request"

    invoke-static {v4}, Landroid/widget/OverScrollLogger;->verbose(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v4}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v4

    xor-int/2addr v4, v5

    return v4

    :cond_19
    iget-object v4, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v4, v2, v3}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->doAnimationFrame(J)Z

    move-result v4

    if-eqz v4, :cond_52

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    iget v7, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mValue:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v5, 0x2

    iget v7, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mVelocity:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v5, "%s finishing value(%d) velocity(%f)"

    invoke-static {v5, v6}, Landroid/widget/OverScrollLogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v6, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMonitor:Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;

    invoke-virtual {v5, v6}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->removeUpdateListener(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mLastUpdateTime:J

    :cond_52
    iput-wide v2, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mLastUpdateTime:J

    return v4
.end method
