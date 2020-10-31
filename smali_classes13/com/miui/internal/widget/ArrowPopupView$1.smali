.class Lcom/miui/internal/widget/ArrowPopupView$1;
.super Ljava/lang/Object;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ArrowPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ArrowPopupView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$1;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$1;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->access$002(Lcom/miui/internal/widget/ArrowPopupView;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$1;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mShowingAnimation:Z
    invoke-static {v0}, Lcom/miui/internal/widget/ArrowPopupView;->access$100(Lcom/miui/internal/widget/ArrowPopupView;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$1;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # invokes: Lcom/miui/internal/widget/ArrowPopupView;->animateShowing()V
    invoke-static {v0}, Lcom/miui/internal/widget/ArrowPopupView;->access$200(Lcom/miui/internal/widget/ArrowPopupView;)V

    :cond_13
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
