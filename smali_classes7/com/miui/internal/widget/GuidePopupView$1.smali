.class Lcom/miui/internal/widget/GuidePopupView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field private mCancel:Z

.field final synthetic this$0:Lcom/miui/internal/widget/GuidePopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/GuidePopupView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView$1;->this$0:Lcom/miui/internal/widget/GuidePopupView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/GuidePopupView$1;->mCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/miui/internal/widget/GuidePopupView$1;->mCancel:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/widget/GuidePopupView$1;->this$0:Lcom/miui/internal/widget/GuidePopupView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/internal/widget/GuidePopupView;->access$002(Lcom/miui/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/widget/GuidePopupView$1;->mCancel:Z

    return-void
.end method
