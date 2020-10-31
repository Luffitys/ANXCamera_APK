.class Landroid/inputmethodservice/RecodingStateAnimatorView$7;
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

.field final synthetic val$ball2Start:F


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView;F)V
    .registers 3

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$7;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    iput p2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$7;->val$ball2Start:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$7;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$7;->val$ball2Start:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$7;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v4}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v4

    aget-object v1, v4, v1

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMaxRad:F

    iget v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$7;->val$ball2Start:F

    sub-float/2addr v1, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$7;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # invokes: Landroid/inputmethodservice/RecodingStateAnimatorView;->updateValueOrUi()V
    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$300(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    return-void
.end method
