.class Lcom/android/camera/ui/V6EffectCropView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6EffectCropView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6EffectCropView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->access$000(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView$1;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/ui/V6EffectCropView;->access$102(Lcom/android/camera/ui/V6EffectCropView;Z)Z

    :cond_0
    return-void
.end method
