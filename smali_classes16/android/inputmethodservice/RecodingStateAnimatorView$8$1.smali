.class Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;
.super Ljava/lang/Object;
.source "RecodingStateAnimatorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView$8;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView$8;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v2}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v2

    aget-object v2, v2, v1

    iget v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->dynamicVoiceMaxRad:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v4}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v4

    aget-object v4, v4, v1

    iget v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->dynamicVoiceMaxRad:F

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v5}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v5

    aget-object v1, v5, v1

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->dynamicVoiceMinRad:F

    sub-float/2addr v4, v1

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # invokes: Landroid/inputmethodservice/RecodingStateAnimatorView;->updateValueOrUi()V
    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$300(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # invokes: Landroid/inputmethodservice/RecodingStateAnimatorView;->processStateChange()V
    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$600(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    return-void
.end method
