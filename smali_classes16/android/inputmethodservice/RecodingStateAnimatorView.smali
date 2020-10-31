.class public Landroid/inputmethodservice/RecodingStateAnimatorView;
.super Landroid/view/View;
.source "RecodingStateAnimatorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;,
        Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;,
        Landroid/inputmethodservice/RecodingStateAnimatorView$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecodingStateAnimatorView"


# instance fields
.field private mAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

.field private mHeight:I

.field private mLastInvalidTime:J

.field private mLoadingColor:[I

.field private mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

.field private mResume:Z

.field private mState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLastInvalidTime:J

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->checkSize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLastInvalidTime:J

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->checkSize()V

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/RecodingStateAnimatorView;)I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    return v0
.end method

.method static synthetic access$100(Landroid/inputmethodservice/RecodingStateAnimatorView;)I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mHeight:I

    return v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    return-object v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/RecodingStateAnimatorView;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->updateValueOrUi()V

    return-void
.end method

.method static synthetic access$400(Landroid/inputmethodservice/RecodingStateAnimatorView;Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->changeState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    return-void
.end method

.method static synthetic access$500(Landroid/inputmethodservice/RecodingStateAnimatorView;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Landroid/inputmethodservice/RecodingStateAnimatorView;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->processStateChange()V

    return-void
.end method

.method static synthetic access$700(Landroid/inputmethodservice/RecodingStateAnimatorView;I)I
    .registers 3

    invoke-direct {p0, p1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->getNextLoadingColor(I)I

    move-result v0

    return v0
.end method

.method private cancelAnimators()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_6

    :cond_1c
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private changeState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V
    .registers 10

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->cancelAnimators()V

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_110

    new-array v0, v2, [F

    fill-array-data v0, :array_1ca

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v5, v4

    aget-object v5, v5, v4

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    iput v5, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowY:F

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v5, v4

    aget-object v5, v5, v4

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v5, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v4

    iput-boolean v3, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->flag1:Z

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v5, v4

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {v5}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->getV()F

    move-result v5

    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_50

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {v5}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->getStartColor()I

    move-result v5

    goto :goto_5a

    :cond_50
    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {v5}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->getEndColor()I

    move-result v5

    :goto_5a
    iput v5, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v6, v4

    iget v6, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v4

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v7, v6, v3

    aget-object v6, v6, v4

    iget v6, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    iput v6, v7, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v7, v7, v3

    iget v7, v7, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    const/16 v7, 0x7d

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v7, v6, v3

    aget-object v6, v6, v3

    iget v6, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v6, v7, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v7, v6, v3

    aget-object v6, v6, v3

    iget v6, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    iput v6, v7, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowY:F

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v6, v3

    iput-boolean v3, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->flag1:Z

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    const-wide/16 v6, 0x15e

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/inputmethodservice/RecodingStateAnimatorView$5;

    invoke-direct {v4, p0, v5}, Landroid/inputmethodservice/RecodingStateAnimatorView$5;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;F)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/inputmethodservice/RecodingStateAnimatorView$6;

    invoke-direct {v4, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$6;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-array v1, v2, [F

    fill-array-data v1, :array_1d2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/inputmethodservice/RecodingStateAnimatorView$7;

    invoke-direct {v2, p0, v3}, Landroid/inputmethodservice/RecodingStateAnimatorView$7;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    invoke-direct {v2, p0, v1}, Landroid/inputmethodservice/RecodingStateAnimatorView$8;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1c5

    :cond_110
    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    if-ne p1, v0, :cond_1c5

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v4

    iput v4, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->layer:I

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v4

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v5, v5, v4

    iput v5, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v4

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v0, v4

    aget-object v0, v0, v4

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v0, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v0, v4

    aget-object v0, v0, v4

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMinRad:F

    iput v0, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v5, v5, v4

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->setStartColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v4, v5, v4

    invoke-virtual {v0, v4}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->setEndColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iput v3, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->layer:I

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v0, v3

    aget-object v0, v0, v3

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v0, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v0, v3

    aget-object v0, v0, v3

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMaxRad:F

    iput v0, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    new-array v0, v2, [F

    fill-array-data v0, :array_1da

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/inputmethodservice/RecodingStateAnimatorView$9;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$9;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$10;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1c6

    :cond_1c5
    :goto_1c5
    nop

    :goto_1c6
    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->invalidate()V

    return-void

    :array_1ca
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1d2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1da
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkSize()V
    .registers 3

    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/inputmethodservice/RecodingStateAnimatorView$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$1;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private getNextLoadingColor(I)I
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    array-length v3, v2

    if-ge v1, v3, :cond_f

    aget v2, v2, v1

    if-ne v2, p1, :cond_c

    move v0, v1

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    aget v1, v2, v0

    return v1
.end method

.method private processStateChange()V
    .registers 10

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    if-eqz v0, :cond_94

    iget-boolean v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mResume:Z

    if-eqz v0, :cond_94

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    sget-object v1, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8a

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    sget-object v1, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    if-ne v0, v1, :cond_8a

    iput-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->cancelAnimators()V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v1, v3, v1

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoice2HasVoiceRad:F

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v5, v4

    iget v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoice2HasVoiceRad:F

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_96

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v7, 0x12c

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Landroid/inputmethodservice/RecodingStateAnimatorView$2;

    invoke-direct {v7, p0, v0, v1}, Landroid/inputmethodservice/RecodingStateAnimatorView$2;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;FF)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v7, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    new-array v5, v5, [F

    fill-array-data v5, :array_9e

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x15e

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/inputmethodservice/RecodingStateAnimatorView$3;

    invoke-direct {v7, p0, v3, v4}, Landroid/inputmethodservice/RecodingStateAnimatorView$3;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;FF)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v7, Landroid/inputmethodservice/RecodingStateAnimatorView$4;

    invoke-direct {v7, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$4;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v7, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_92

    :cond_8a
    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->cancelAnimators()V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->changeState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    :goto_92
    iput-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    :cond_94
    return-void

    nop

    :array_96
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateValueOrUi()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLastInvalidTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->invalidate()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLastInvalidTime:J

    :cond_1a
    return-void
.end method


# virtual methods
.method public getPaddingState()Landroid/inputmethodservice/RecodingStateAnimatorView$State;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    return-object v0
.end method

.method public getState()Landroid/inputmethodservice/RecodingStateAnimatorView$State;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    return-object v0
.end method

.method public init()V
    .registers 13

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->cancelAnimators()V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    const v1, -0xcf320f

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, -0x136d1

    const/4 v3, 0x1

    aput v1, v0, v3

    const v1, -0x99789

    const/4 v4, 0x2

    aput v1, v0, v4

    const v1, -0xc06c04

    const/4 v5, 0x3

    aput v1, v0, v5

    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mHeight:I

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    new-instance v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;Landroid/inputmethodservice/RecodingStateAnimatorView$1;)V

    aput-object v1, v0, v2

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/2addr v1, v4

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mHeight:I

    div-int/2addr v1, v4

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v1, v1, v5

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v1, v1, v2

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v1, v0, v2

    aget-object v0, v0, v2

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v0, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v1, v0, v2

    aget-object v0, v0, v2

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    iput v0, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowY:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    int-to-float v1, v1

    const/high16 v5, 0x41380000    # 11.5f

    div-float/2addr v1, v5

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->loadingMinRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    int-to-float v1, v1

    const/high16 v7, 0x41180000    # 9.5f

    div-float/2addr v1, v7

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->loadingMaxRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMaxRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x7

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMinRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x9

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoice2HasVoiceRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    iput v2, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->layer:I

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    int-to-double v8, v1

    const-wide/high16 v10, 0x401e000000000000L    # 7.5

    div-double/2addr v8, v10

    double-to-float v1, v8

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMaxRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x9

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMinRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    new-instance v1, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-direct {v1, p0, v2, v2}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;II)V

    iput-object v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    new-instance v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    invoke-direct {v1, p0, v6}, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;Landroid/inputmethodservice/RecodingStateAnimatorView$1;)V

    aput-object v1, v0, v3

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/2addr v1, v4

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mHeight:I

    div-int/2addr v1, v4

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->loadingMinRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v7

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->loadingMaxRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0xb

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMaxRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMinRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    int-to-float v1, v1

    const/high16 v4, 0x40600000    # 3.5f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMaxRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMinRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v1, v1, v2

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v1, v0, v3

    aget-object v0, v0, v3

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v0, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v1, v0, v3

    aget-object v0, v0, v3

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    iput v0, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowY:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoice2HasVoiceRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    iput v3, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->layer:I

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v3

    new-instance v1, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-direct {v1, p0, v2, v2}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;II)V

    iput-object v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    iput-boolean v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mResume:Z

    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->setPreState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_26

    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_23

    aget-object v5, v2, v4

    iget v6, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->layer:I

    if-ne v1, v6, :cond_20

    iget v6, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    iget v7, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowY:F

    iget v8, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v9, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_26
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_9

    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->resume()V

    goto :goto_c

    :cond_9
    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->pause()V

    :goto_c
    return-void
.end method

.method public pause()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->pause()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public resume()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public setPreState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V
    .registers 3

    if-eqz p1, :cond_10

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->processStateChange()V

    goto :goto_18

    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->cancelAnimators()V

    :cond_18
    :goto_18
    return-void
.end method

.method public setVolume(F)V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput p1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->scale:F

    :cond_9
    return-void
.end method
