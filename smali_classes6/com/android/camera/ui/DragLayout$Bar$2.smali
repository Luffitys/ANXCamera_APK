.class Lcom/android/camera/ui/DragLayout$Bar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/DragLayout$Bar;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/DragLayout$Bar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar$2;->this$0:Lcom/android/camera/ui/DragLayout$Bar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$Bar$2;->this$0:Lcom/android/camera/ui/DragLayout$Bar;

    invoke-static {p0}, Lcom/android/camera/ui/DragLayout$Bar;->access$1900(Lcom/android/camera/ui/DragLayout$Bar;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/ui/DragLayout$Bar;->access$1802(Lcom/android/camera/ui/DragLayout$Bar;I)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
