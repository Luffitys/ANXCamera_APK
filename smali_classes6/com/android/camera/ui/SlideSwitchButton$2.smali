.class Lcom/android/camera/ui/SlideSwitchButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SlideSwitchButton;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SlideSwitchButton;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iput p2, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->val$index:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iget p0, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->val$index:I

    invoke-static {p1, p0}, Lcom/android/camera/ui/SlideSwitchButton;->access$800(Lcom/android/camera/ui/SlideSwitchButton;I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iget v0, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->val$index:I

    invoke-static {p1, v0}, Lcom/android/camera/ui/SlideSwitchButton;->access$102(Lcom/android/camera/ui/SlideSwitchButton;I)I

    iget-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iget v0, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->val$index:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/camera/ui/SlideSwitchButton;->access$700(Lcom/android/camera/ui/SlideSwitchButton;IZ)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    const-string v0, "pref_speech_shutter"

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iget p0, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->val$index:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method
