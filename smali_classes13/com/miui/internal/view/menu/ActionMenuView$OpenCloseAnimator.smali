.class Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenCloseAnimator"
.end annotation


# instance fields
.field mCloseAnimator:Landroid/animation/Animator;

.field mCurrentAnimator:Landroid/animation/Animator;

.field mIsOpen:Z

.field final synthetic this$0:Lcom/miui/internal/view/menu/ActionMenuView;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->this$0:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->initialize()V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    :cond_d
    return-void
.end method

.method close()V
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->mIsOpen:Z

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method initialize()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_2e

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->this$0:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    const-string v1, "TranslationY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->this$0:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2e
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    return-void
.end method

.method open()V
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->cancel()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->mIsOpen:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->this$0:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    return-void
.end method

.method public setTranslationY(F)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->this$0:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->this$0:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method
