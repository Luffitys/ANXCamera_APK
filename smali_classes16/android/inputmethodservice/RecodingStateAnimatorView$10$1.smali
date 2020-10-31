.class Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;
.super Ljava/lang/Object;
.source "RecodingStateAnimatorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView$10;->onAnimationRepeat(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$10;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView$10;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    iget-object v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v2}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->getColor(F)I

    move-result v2

    iput v2, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    iget-object v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v2}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v2

    aget-object v1, v2, v1

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # invokes: Landroid/inputmethodservice/RecodingStateAnimatorView;->updateValueOrUi()V
    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$300(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    return-void
.end method
