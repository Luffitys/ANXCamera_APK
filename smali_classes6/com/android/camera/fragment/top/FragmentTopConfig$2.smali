.class Lcom/android/camera/fragment/top/FragmentTopConfig$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

.field final synthetic val$toShow:Z


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iput-boolean p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$toShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setClickEnable(Z)V

    iget-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$toShow:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$100(Lcom/android/camera/fragment/top/FragmentTopConfig;)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$202(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setClickEnable(Z)V

    iget-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->val$toShow:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$100(Lcom/android/camera/fragment/top/FragmentTopConfig;)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$202(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setClickEnable(Z)V

    return-void
.end method
