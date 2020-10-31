.class Lmiui/app/transition/ScaleUpOrDown$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScaleUpOrDown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/transition/ScaleUpOrDown;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/transition/ScaleUpOrDown;

.field final synthetic val$frameLayout:Lmiui/view/RoundedFrameLayout;

.field final synthetic val$overlay:Landroid/view/ViewGroupOverlay;


# direct methods
.method constructor <init>(Lmiui/app/transition/ScaleUpOrDown;Landroid/view/ViewGroupOverlay;Lmiui/view/RoundedFrameLayout;)V
    .registers 4

    iput-object p1, p0, Lmiui/app/transition/ScaleUpOrDown$4;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    iput-object p2, p0, Lmiui/app/transition/ScaleUpOrDown$4;->val$overlay:Landroid/view/ViewGroupOverlay;

    iput-object p3, p0, Lmiui/app/transition/ScaleUpOrDown$4;->val$frameLayout:Lmiui/view/RoundedFrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object v0, p0, Lmiui/app/transition/ScaleUpOrDown$4;->val$overlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lmiui/app/transition/ScaleUpOrDown$4;->val$frameLayout:Lmiui/view/RoundedFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lmiui/app/transition/ScaleUpOrDown$4;->val$overlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lmiui/app/transition/ScaleUpOrDown$4;->val$frameLayout:Lmiui/view/RoundedFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method
