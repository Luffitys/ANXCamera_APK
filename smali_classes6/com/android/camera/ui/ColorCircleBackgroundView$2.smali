.class Lcom/android/camera/ui/ColorCircleBackgroundView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ColorCircleBackgroundView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ColorCircleBackgroundView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/ColorCircleBackgroundView$2;->this$0:Lcom/android/camera/ui/ColorCircleBackgroundView;

    iput p2, p0, Lcom/android/camera/ui/ColorCircleBackgroundView$2;->val$index:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/ColorCircleBackgroundView$2;->this$0:Lcom/android/camera/ui/ColorCircleBackgroundView;

    invoke-static {p1}, Lcom/android/camera/ui/ColorCircleBackgroundView;->access$100(Lcom/android/camera/ui/ColorCircleBackgroundView;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/ui/ColorCircleBackgroundView$2;->this$0:Lcom/android/camera/ui/ColorCircleBackgroundView;

    iget v1, p0, Lcom/android/camera/ui/ColorCircleBackgroundView$2;->val$index:I

    invoke-static {v0, v1}, Lcom/android/camera/ui/ColorCircleBackgroundView;->access$200(Lcom/android/camera/ui/ColorCircleBackgroundView;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/android/camera/ui/ColorCircleBackgroundView$2;->this$0:Lcom/android/camera/ui/ColorCircleBackgroundView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
