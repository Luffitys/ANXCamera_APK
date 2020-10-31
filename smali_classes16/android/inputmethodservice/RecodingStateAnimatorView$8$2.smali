.class Landroid/inputmethodservice/RecodingStateAnimatorView$8$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecodingStateAnimatorView.java"


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

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$2;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_41

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$2;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$2;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v2}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v2

    aget-object v2, v2, v1

    iget v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMaxRad:F

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3ecccccd    # 0.4f

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$2;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    # getter for: Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    invoke-static {v5}, Landroid/inputmethodservice/RecodingStateAnimatorView;->access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v5

    aget-object v1, v5, v1

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->scale:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    mul-float/2addr v2, v1

    iput v2, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->dynamicVoiceMaxRad:F

    :cond_41
    return-void
.end method
