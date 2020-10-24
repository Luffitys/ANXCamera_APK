.class Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$5;->this$0:Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$5;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$5;->val$view:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$5;->this$0:Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$5;->this$0:Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;

    iget-object p1, p1, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$5;->this$0:Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$5;->this$0:Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
