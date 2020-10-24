.class Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

.field final synthetic val$targetChildIndex:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;->val$targetChildIndex:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->resetScale()V

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;->val$targetChildIndex:I

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-static {v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->access$300(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
