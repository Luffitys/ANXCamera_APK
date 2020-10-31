.class Lcom/android/internal/widget/MessagingPropertyAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MessagingPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MessagingPropertyAnimator;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$4;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$4;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$4;->val$view:Landroid/view/View;

    const v1, 0x10204d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$4;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/widget/MessagingPropertyAnimator;->updateLayerType(Landroid/view/View;Z)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->access$100(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$4;->val$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_16
    return-void
.end method
