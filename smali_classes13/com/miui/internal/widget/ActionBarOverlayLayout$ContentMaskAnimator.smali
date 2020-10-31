.class public Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentMaskAnimator"
.end annotation


# instance fields
.field private mHideAnimator:Landroid/animation/ObjectAnimator;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mShowAnimator:Landroid/animation/ObjectAnimator;

.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;)V
    .registers 7

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mOnClickListener:Landroid/view/View$OnClickListener;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_40

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    new-array v1, v1, [F

    fill-array-data v1, :array_48

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_3e
    return-void

    nop

    :array_40
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_48
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public hide()Landroid/animation/Animator;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$400(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->bringToFront()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$400(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->bringToFront()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2d
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_2b

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$400(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->bringToFront()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2b
    return-void
.end method

.method public show()Landroid/animation/Animator;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method
