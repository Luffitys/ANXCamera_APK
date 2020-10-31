.class Landroid/inputmethodservice/RecodingStateAnimatorView$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecodingStateAnimatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView;->changeState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

.field v2:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 7

    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_89

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;
    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$500(Landroid/inputmethodservice/RecodingStateAnimatorView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2a
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->getEndColor()I

    move-result v0

    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # invokes: Landroid/inputmethodservice/RecodingStateAnimatorView;->getNextLoadingColor(I)I
    invoke-static {v2, v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$700(Landroid/inputmethodservice/RecodingStateAnimatorView;I)I

    move-result v2

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v3}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {v3, v0}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->setStartColor(I)V

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v3}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v3

    aget-object v1, v3, v1

    iget-object v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->setEndColor(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_8a

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView$10;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;
    invoke-static {v1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$500(Landroid/inputmethodservice/RecodingStateAnimatorView;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_89
    return-void

    :array_8a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
