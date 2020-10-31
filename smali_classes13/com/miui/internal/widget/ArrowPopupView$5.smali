.class Lcom/miui/internal/widget/ArrowPopupView$5;
.super Ljava/lang/Object;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/ArrowPopupView;->animateToShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ArrowPopupView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 13

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/miui/internal/widget/ArrowPopupView;->access$600(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/miui/internal/widget/ArrowPopupView;->access$600(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1a
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v0}, Lcom/miui/internal/widget/ArrowPopupView;->access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v0}, Lcom/miui/internal/widget/ArrowPopupView;->access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    :cond_2b
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    # setter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->access$002(Lcom/miui/internal/widget/ArrowPopupView;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # invokes: Lcom/miui/internal/widget/ArrowPopupView;->getAnimationPivot([F)V
    invoke-static {v1, v0}, Lcom/miui/internal/widget/ArrowPopupView;->access$700(Lcom/miui/internal/widget/ArrowPopupView;[F)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v3, 0x0

    aget v9, v0, v3

    const/4 v10, 0x0

    aget v11, v0, v2

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-boolean v4, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v4, :cond_68

    const-wide/16 v4, 0x118

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_73

    :cond_68
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v4}, Lcom/miui/internal/widget/ArrowPopupView;->access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    :goto_73
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v4}, Lcom/miui/internal/widget/ArrowPopupView;->access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v4}, Lcom/miui/internal/widget/ArrowPopupView;->access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v4}, Lcom/miui/internal/widget/ArrowPopupView;->access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v5}, Lcom/miui/internal/widget/ArrowPopupView;->access$800(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v4}, Lcom/miui/internal/widget/ArrowPopupView;->access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v4}, Lcom/miui/internal/widget/ArrowPopupView;->access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/internal/widget/ArrowPopupView;->startAnimation(Landroid/view/animation/Animation;)V

    return v2
.end method
