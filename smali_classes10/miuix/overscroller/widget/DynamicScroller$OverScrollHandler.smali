.class Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mAnimMaxValue:F

.field private mAnimMinValue:F

.field mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

.field private mLastUpdateTime:J

.field private final mMaxLegalValue:I

.field private final mMinLegalValue:I

.field private mMonitor:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;

.field private mOnFinishedListener:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$OnFinishedListener;

.field mStartValue:I

.field mValue:I

.field mVelocity:F


# direct methods
.method constructor <init>(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;IF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;-><init>(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;Lmiuix/overscroller/widget/DynamicScroller$1;)V

    iput-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMonitor:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;

    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    const v0, -0x800001

    invoke-virtual {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    iput p2, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mStartValue:I

    iput p3, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    const p1, 0x7fffffff

    const/high16 v0, -0x80000000

    if-lez p2, :cond_0

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p1, p2

    :cond_1
    :goto_0
    iput v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMinLegalValue:I

    iput p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMaxLegalValue:I

    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {p0, p3}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method static synthetic access$500(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;)F
    .locals 0

    iget p0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimMinValue:F

    return p0
.end method

.method static synthetic access$600(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;)F
    .locals 0

    iget p0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimMaxValue:F

    return p0
.end method


# virtual methods
.method cancel()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mLastUpdateTime:J

    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMonitor:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;

    invoke-virtual {v0, p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->removeUpdateListener(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    return-void
.end method

.method continueWhenFinished()Z
    .locals 2

    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mOnFinishedListener:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$OnFinishedListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    int-to-float v1, v1

    iget p0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    invoke-interface {v0, v1, p0}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$OnFinishedListener;->whenFinished(FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method getAnimation()Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .locals 0

    iget-object p0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method getOffset(I)I
    .locals 0

    iget p0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mStartValue:I

    sub-int/2addr p1, p0

    return p1
.end method

.method setMaxValue(I)V
    .locals 1

    iget v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMaxLegalValue:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mStartValue:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    iput p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimMaxValue:F

    return-void
.end method

.method setMinValue(I)V
    .locals 1

    iget v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMinLegalValue:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mStartValue:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    iput p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimMinValue:F

    return-void
.end method

.method setOnFinishedListener(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$OnFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mOnFinishedListener:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$OnFinishedListener;

    return-void
.end method

.method start()V
    .locals 2

    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMonitor:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;

    invoke-virtual {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->start(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mLastUpdateTime:J

    return-void
.end method

.method update()Z
    .locals 7

    iget-wide v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mLastUpdateTime:J

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "update done in this frame, dropping current update request"

    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->verbose(Ljava/lang/String;)V

    iget-object p0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v0, v2, v3}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->doAnimationFrame(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget v5, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget v5, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "%s finishing value(%d) velocity(%f)"

    invoke-static {v1, v4}, Lmiuix/overscroller/widget/OverScrollLogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v4, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMonitor:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;

    invoke-virtual {v1, v4}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->removeUpdateListener(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mLastUpdateTime:J

    :cond_1
    iput-wide v2, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mLastUpdateTime:J

    return v0
.end method
