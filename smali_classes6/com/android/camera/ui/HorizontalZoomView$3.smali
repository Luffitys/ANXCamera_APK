.class Lcom/android/camera/ui/HorizontalZoomView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HorizontalZoomView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HorizontalZoomView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$3;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView$3;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$3;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->access$102(Lcom/android/camera/ui/HorizontalZoomView;Z)Z

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView$3;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
