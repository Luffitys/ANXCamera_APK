.class Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

.field final synthetic val$translationX:F

.field final synthetic val$zoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Lcom/android/camera/ui/zoom/ZoomRatioView;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;->val$zoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    iput p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;->val$translationX:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;->val$zoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;->val$translationX:F

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    return-void
.end method
