.class Lcom/miui/internal/widget/GuidePopupView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GuidePopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/GuidePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancel:Z

.field final synthetic this$0:Lcom/miui/internal/widget/GuidePopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/GuidePopupView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView$2;->this$0:Lcom/miui/internal/widget/GuidePopupView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView$2;->mCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView$2;->mCancel:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView$2;->this$0:Lcom/miui/internal/widget/GuidePopupView;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/widget/GuidePopupView;->mIsDismissing:Z
    invoke-static {v0, v1}, Lcom/miui/internal/widget/GuidePopupView;->access$102(Lcom/miui/internal/widget/GuidePopupView;Z)Z

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView$2;->this$0:Lcom/miui/internal/widget/GuidePopupView;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/miui/internal/widget/GuidePopupView;->access$002(Lcom/miui/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView$2;->this$0:Lcom/miui/internal/widget/GuidePopupView;

    # getter for: Lcom/miui/internal/widget/GuidePopupView;->mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;
    invoke-static {v0}, Lcom/miui/internal/widget/GuidePopupView;->access$200(Lcom/miui/internal/widget/GuidePopupView;)Lmiui/widget/GuidePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView$2;->this$0:Lcom/miui/internal/widget/GuidePopupView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/GuidePopupView;->setArrowMode(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView$2;->mCancel:Z

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView$2;->this$0:Lcom/miui/internal/widget/GuidePopupView;

    const/4 v1, 0x1

    # setter for: Lcom/miui/internal/widget/GuidePopupView;->mIsDismissing:Z
    invoke-static {v0, v1}, Lcom/miui/internal/widget/GuidePopupView;->access$102(Lcom/miui/internal/widget/GuidePopupView;Z)Z

    return-void
.end method
