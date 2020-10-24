.class Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->val$index:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->val$index:I

    invoke-static {p1, p0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$900(Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->val$index:I

    invoke-static {p1, v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$202(Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)I

    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->val$index:I

    invoke-static {p1, p0, v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$800(Lcom/android/camera/ui/TopAlertSlideSwitchButton;IZ)V

    return-void
.end method
