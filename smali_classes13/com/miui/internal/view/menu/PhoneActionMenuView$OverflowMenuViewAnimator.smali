.class Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;
.super Ljava/lang/Object;
.source "PhoneActionMenuView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/PhoneActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuViewAnimator"
.end annotation


# instance fields
.field private mCollapseAnimator:Landroid/animation/AnimatorSet;

.field private mExpandAnimator:Landroid/animation/AnimatorSet;

.field private overlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

.field final synthetic this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;


# direct methods
.method private constructor <init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;)V

    return-void
.end method

.method private setContentViewImportantForAccessibility(Z)V
    .registers 4

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->overlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1e

    :cond_d
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->overlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setImportantForAccessibilityNoHideDescendants(Landroid/view/View;)V

    :goto_1e
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1e
    return-void
.end method

.method public ensureAnimators()V
    .registers 11

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->overlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_a4

    const-string v4, "Value"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v3, v2, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    iget-object v6, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->overlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v6, p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->show()Landroid/animation/Animator;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v3}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x10e0000

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v0, v3

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    new-array v8, v2, [F

    fill-array-data v8, :array_ac

    invoke-static {v3, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v5

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->overlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->hide()Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    sget-boolean v2, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-nez v2, :cond_a3

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_a3
    return-void

    :array_a4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_ac
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public hide()V
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ensureAnimators()V

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    # getter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$200(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_35

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    # getter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$200(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_15

    goto :goto_35

    :cond_15
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    # getter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$200(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    # getter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$200(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_3f

    :cond_29
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setValue(F)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    goto :goto_3f

    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setValue(F)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->postInvalidateOnAnimation()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    # getter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$100(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    # getter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$100(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    # setter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$202(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    goto :goto_5a

    :cond_23
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    # getter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$100(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    # setter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$202(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    # getter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z
    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$300(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    # getter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$500(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    # getter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$400(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->postInvalidateOnAnimation()V

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

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    # getter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$200(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getPresenter()Lcom/miui/internal/view/menu/ActionMenuPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    :cond_14
    return-void
.end method

.method public reverse()V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3d

    :try_start_6
    const-string v0, "android.animation.AnimatorSet"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "reverse"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_33} :catch_34

    goto :goto_3c

    :catch_34
    move-exception v0

    const-string v1, "PhoneActionMenuView"

    const-string v2, "reverse: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3c
    :goto_3c
    goto :goto_74

    :cond_3d
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    :cond_4c
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    :cond_5a
    if-nez v0, :cond_5d

    return-void

    :cond_5d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_61
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    move-object v3, v2

    check-cast v3, Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_61

    :cond_74
    :goto_74
    return-void
.end method

.method public show()V
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ensureAnimators()V

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
