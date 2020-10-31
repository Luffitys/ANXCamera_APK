.class Landroid/transition/ChangeBounds$7;
.super Landroid/transition/TransitionListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Landroid/transition/ChangeBounds;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V
    .registers 3

    iput-object p1, p0, Landroid/transition/ChangeBounds$7;->this$0:Landroid/transition/ChangeBounds;

    iput-object p2, p0, Landroid/transition/ChangeBounds$7;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/transition/ChangeBounds$7;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .registers 4

    iget-object v0, p0, Landroid/transition/ChangeBounds$7;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeBounds$7;->mCanceled:Z

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4

    iget-boolean v0, p0, Landroid/transition/ChangeBounds$7;->mCanceled:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/transition/ChangeBounds$7;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_a
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .registers 4

    iget-object v0, p0, Landroid/transition/ChangeBounds$7;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .registers 4

    iget-object v0, p0, Landroid/transition/ChangeBounds$7;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    return-void
.end method
