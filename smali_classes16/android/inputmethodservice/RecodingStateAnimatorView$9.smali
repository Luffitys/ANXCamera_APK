.class Landroid/inputmethodservice/RecodingStateAnimatorView$9;
.super Ljava/lang/Object;
.source "RecodingStateAnimatorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v2}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v2

    aget-object v2, v2, v1

    iget v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMaxRad:F

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v3}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v3

    aget-object v3, v3, v1

    iget v3, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMaxRad:F

    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v4}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v4

    aget-object v1, v4, v1

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMinRad:F

    sub-float/2addr v3, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v2}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v2

    aget-object v2, v2, v1

    iget v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMinRad:F

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v3}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v3

    aget-object v3, v3, v1

    iget v3, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMaxRad:F

    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v4}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v4

    aget-object v1, v4, v1

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMinRad:F

    sub-float/2addr v3, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # invokes: Landroid/inputmethodservice/RecodingStateAnimatorView;->updateValueOrUi()V
    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$300(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # invokes: Landroid/inputmethodservice/RecodingStateAnimatorView;->processStateChange()V
    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$600(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    return-void
.end method
