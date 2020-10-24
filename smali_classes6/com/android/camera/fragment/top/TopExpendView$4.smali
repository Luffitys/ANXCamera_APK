.class Lcom/android/camera/fragment/top/TopExpendView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/TopExpendView;

.field final synthetic val$animatorEnd:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/TopExpendView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView$4;->this$0:Lcom/android/camera/fragment/top/TopExpendView;

    iput-object p2, p0, Lcom/android/camera/fragment/top/TopExpendView$4;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/camera/fragment/top/TopExpendView$4;->val$animatorEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView$4;->this$0:Lcom/android/camera/fragment/top/TopExpendView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/top/TopExpendView;->access$102(Lcom/android/camera/fragment/top/TopExpendView;Z)Z

    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView$4;->val$view:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView$4;->val$animatorEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/TopExpendView$4;->this$0:Lcom/android/camera/fragment/top/TopExpendView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView$4;->this$0:Lcom/android/camera/fragment/top/TopExpendView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/top/TopExpendView;->access$102(Lcom/android/camera/fragment/top/TopExpendView;Z)Z

    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView$4;->val$view:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView$4;->val$animatorEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/TopExpendView$4;->this$0:Lcom/android/camera/fragment/top/TopExpendView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView$4;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/top/TopExpendView$4;->this$0:Lcom/android/camera/fragment/top/TopExpendView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/camera/fragment/top/TopExpendView;->access$102(Lcom/android/camera/fragment/top/TopExpendView;Z)Z

    return-void
.end method
