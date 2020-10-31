.class Lmiui/view/VolumeDialog$5;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog;->expandVolumeBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;

.field final synthetic val$isExpanded:Z


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;Z)V
    .registers 3

    iput-object p1, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    iput-boolean p2, p0, Lmiui/view/VolumeDialog$5;->val$isExpanded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    iget-boolean v0, p0, Lmiui/view/VolumeDialog$5;->val$isExpanded:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$1700(Lmiui/view/VolumeDialog;)V

    :cond_9
    iget-object v0, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$1600(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$1600(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v0, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$1800(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 9

    iget-boolean v0, p0, Lmiui/view/VolumeDialog$5;->val$isExpanded:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$1700(Lmiui/view/VolumeDialog;)V

    :cond_9
    iget-object v0, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$1800(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v2, 0x3e8

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$1600(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$1600(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v3, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;
    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$1900(Lmiui/view/VolumeDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/VolumeDialog$VolumeRow;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v3}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/View;->measure(II)V

    iget-boolean v3, p0, Lmiui/view/VolumeDialog$5;->val$isExpanded:Z

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$1600(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    goto :goto_6f

    :cond_5b
    iget-object v3, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;
    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$1900(Lmiui/view/VolumeDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/VolumeDialog$VolumeRow;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v3}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    :goto_6f
    move v2, v3

    iget-object v3, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$2000(Lmiui/view/VolumeDialog;)Landroid/animation/ValueAnimator;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [I

    iget-object v6, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;
    invoke-static {v6}, Lmiui/view/VolumeDialog;->access$1600(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    aput v6, v5, v4

    const/4 v4, 0x1

    aput v2, v5, v4

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    return-void
.end method
