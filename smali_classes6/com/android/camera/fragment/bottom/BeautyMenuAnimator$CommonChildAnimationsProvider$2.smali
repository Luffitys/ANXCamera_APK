.class Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$CommonChildAnimationsProvider$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$CommonChildAnimationsProvider;

.field final synthetic val$childView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$CommonChildAnimationsProvider;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$CommonChildAnimationsProvider$2;->this$0:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$CommonChildAnimationsProvider;

    iput-object p2, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$CommonChildAnimationsProvider$2;->val$childView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/animation/AnimationMonitor;->animationStop(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$CommonChildAnimationsProvider$2;->val$childView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/animation/AnimationMonitor;->animationStop(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object p0

    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/animation/AnimationMonitor;->animationStart(Ljava/lang/Object;I)V

    return-void
.end method
