.class Lcom/android/camera/ui/HorizontalZoomView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HorizontalZoomView;

.field final synthetic val$isDown:Z

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HorizontalZoomView;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$6;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iput p2, p0, Lcom/android/camera/ui/HorizontalZoomView$6;->val$state:I

    iput-boolean p3, p0, Lcom/android/camera/ui/HorizontalZoomView$6;->val$isDown:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$6;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView$6;->val$state:I

    invoke-static {p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->access$302(Lcom/android/camera/ui/HorizontalZoomView;I)I

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$6;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView$6;->val$isDown:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->access$202(Lcom/android/camera/ui/HorizontalZoomView;F)F

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$6;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView$6;->val$isDown:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->access$102(Lcom/android/camera/ui/HorizontalZoomView;Z)Z

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView$6;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
