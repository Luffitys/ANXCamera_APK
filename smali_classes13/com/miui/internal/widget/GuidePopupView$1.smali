.class Lcom/miui/internal/widget/GuidePopupView$1;
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

    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView$1;->this$0:Lcom/miui/internal/widget/GuidePopupView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView$1;->mCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView$1;->mCancel:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView$1;->this$0:Lcom/miui/internal/widget/GuidePopupView;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/miui/internal/widget/GuidePopupView;->access$002(Lcom/miui/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView$1;->mCancel:Z

    return-void
.end method
