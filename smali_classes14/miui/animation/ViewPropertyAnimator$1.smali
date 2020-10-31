.class Lmiui/animation/ViewPropertyAnimator$1;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/ViewPropertyAnimator;-><init>(Landroid/view/View;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/animation/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Lmiui/animation/ViewPropertyAnimator;)V
    .registers 2

    iput-object p1, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 7

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    # getter for: Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->access$000(Lmiui/animation/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    # invokes: Lmiui/animation/ViewPropertyAnimator;->setAnimator(Landroid/view/View;Landroid/animation/Animator;)V
    invoke-static {v0, v1}, Lmiui/animation/ViewPropertyAnimator;->access$100(Landroid/view/View;Landroid/animation/Animator;)V

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    # invokes: Lmiui/animation/ViewPropertyAnimator;->setFinalValues()V
    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->access$200(Lmiui/animation/ViewPropertyAnimator;)V

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-virtual {v0}, Lmiui/animation/ViewPropertyAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    iget-object v4, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-interface {v3, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_22

    :cond_35
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    # getter for: Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->access$000(Lmiui/animation/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    # invokes: Lmiui/animation/ViewPropertyAnimator;->setAnimator(Landroid/view/View;Landroid/animation/Animator;)V
    invoke-static {v0, v1}, Lmiui/animation/ViewPropertyAnimator;->access$100(Landroid/view/View;Landroid/animation/Animator;)V

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    # invokes: Lmiui/animation/ViewPropertyAnimator;->setFinalValues()V
    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->access$200(Lmiui/animation/ViewPropertyAnimator;)V

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-virtual {v0}, Lmiui/animation/ViewPropertyAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    iget-object v4, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-interface {v3, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_22

    :cond_35
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 7

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-virtual {v0}, Lmiui/animation/ViewPropertyAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    iget-object v4, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-interface {v3, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    goto :goto_13

    :cond_26
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 7

    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-virtual {v0}, Lmiui/animation/ViewPropertyAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    iget-object v4, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-interface {v3, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_13

    :cond_26
    return-void
.end method
