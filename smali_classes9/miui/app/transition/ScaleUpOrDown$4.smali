.class Lmiui/app/transition/ScaleUpOrDown$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/app/transition/ScaleUpOrDown;

.field final synthetic val$frameLayout:Lmiui/view/RoundedFrameLayout;

.field final synthetic val$overlay:Landroid/view/ViewGroupOverlay;


# direct methods
.method constructor <init>(Lmiui/app/transition/ScaleUpOrDown;Landroid/view/ViewGroupOverlay;Lmiui/view/RoundedFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lmiui/app/transition/ScaleUpOrDown$4;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    iput-object p2, p0, Lmiui/app/transition/ScaleUpOrDown$4;->val$overlay:Landroid/view/ViewGroupOverlay;

    iput-object p3, p0, Lmiui/app/transition/ScaleUpOrDown$4;->val$frameLayout:Lmiui/view/RoundedFrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lmiui/app/transition/ScaleUpOrDown$4;->val$overlay:Landroid/view/ViewGroupOverlay;

    iget-object p0, p0, Lmiui/app/transition/ScaleUpOrDown$4;->val$frameLayout:Lmiui/view/RoundedFrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lmiui/app/transition/ScaleUpOrDown$4;->val$overlay:Landroid/view/ViewGroupOverlay;

    iget-object p0, p0, Lmiui/app/transition/ScaleUpOrDown$4;->val$frameLayout:Lmiui/view/RoundedFrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method
