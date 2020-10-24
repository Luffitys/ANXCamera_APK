.class Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

.field final synthetic val$currZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

.field final synthetic val$nextZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Lcom/android/camera/ui/zoom/ZoomRatioView;Lcom/android/camera/ui/zoom/ZoomRatioView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;->val$currZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    iput-object p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;->val$nextZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;->val$currZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;->val$currZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->resetScale()V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;->val$nextZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;->val$nextZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->resetScale()V

    :cond_1
    return-void
.end method
