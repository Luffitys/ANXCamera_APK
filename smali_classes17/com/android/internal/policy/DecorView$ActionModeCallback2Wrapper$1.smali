.class Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->onDestroyActionMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

.field final synthetic val$lastActionModeView:Lcom/android/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;Lcom/android/internal/widget/ActionBarContextView;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->this$1:Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    iput-object p2, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->val$lastActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->val$lastActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->this$1:Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    # getter for: Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->access$100(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v1

    if-ne v0, v1, :cond_3c

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->val$lastActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->this$1:Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    # getter for: Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->access$200(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->this$1:Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    # getter for: Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->access$200(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_28
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->val$lastActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->this$1:Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->access$402(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->this$1:Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    :cond_3c
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
