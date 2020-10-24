.class Lcom/android/camera/fragment/top/TopExpendView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/TopExpendView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/TopExpendView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView$2;->this$0:Lcom/android/camera/fragment/top/TopExpendView;

    iput-object p2, p0, Lcom/android/camera/fragment/top/TopExpendView$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView$2;->this$0:Lcom/android/camera/fragment/top/TopExpendView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/top/TopExpendView;->access$102(Lcom/android/camera/fragment/top/TopExpendView;Z)Z

    iget-object p0, p0, Lcom/android/camera/fragment/top/TopExpendView$2;->val$view:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView$2;->this$0:Lcom/android/camera/fragment/top/TopExpendView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/top/TopExpendView;->access$102(Lcom/android/camera/fragment/top/TopExpendView;Z)Z

    iget-object p0, p0, Lcom/android/camera/fragment/top/TopExpendView$2;->val$view:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView$2;->this$0:Lcom/android/camera/fragment/top/TopExpendView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/fragment/top/TopExpendView;->access$102(Lcom/android/camera/fragment/top/TopExpendView;Z)Z

    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView$2;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/top/TopExpendView$2;->val$view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
