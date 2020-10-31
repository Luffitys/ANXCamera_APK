.class public Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DOnAnimationEndListener"
.end annotation


# instance fields
.field mFinalVisibility:Z

.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarContextView;


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/ActionBarContextView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->mFinalVisibility:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lmiui/animation/physics/DynamicAnimation;ZFF)V
    .registers 9

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    # invokes: Lcom/miui/internal/widget/ActionBarContextView;->setSplitAnimating(Z)V
    invoke-static {v0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->access$400(Lcom/miui/internal/widget/ActionBarContextView;Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    # setter for: Lcom/miui/internal/widget/ActionBarContextView;->mAnimateStart:Z
    invoke-static {v0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->access$302(Lcom/miui/internal/widget/ActionBarContextView;Z)Z

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->mFinalVisibility:Z

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContextView;->notifyAnimationEnd(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    # getter for: Lcom/miui/internal/widget/ActionBarContextView;->mAnimationMode:I
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarContextView;->access$500(Lcom/miui/internal/widget/ActionBarContextView;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_20

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContextView;->killMode()V

    :cond_20
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    # setter for: Lcom/miui/internal/widget/ActionBarContextView;->mAnimationMode:I
    invoke-static {v0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->access$502(Lcom/miui/internal/widget/ActionBarContextView;I)I

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 v2, 0x0

    # setter for: Lcom/miui/internal/widget/ActionBarContextView;->mVisibilityAnim:Lmiui/animation/physics/SpringAnimationSet;
    invoke-static {v0, v2}, Lcom/miui/internal/widget/ActionBarContextView;->access$602(Lcom/miui/internal/widget/ActionBarContextView;Lmiui/animation/physics/SpringAnimationSet;)Lmiui/animation/physics/SpringAnimationSet;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->mFinalVisibility:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_35

    move v2, v1

    goto :goto_36

    :cond_35
    move v2, v3

    :goto_36
    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContextView$DOnAnimationEndListener;->mFinalVisibility:Z

    if-eqz v2, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v3

    :goto_4f
    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setVisibility(I)V

    :cond_52
    return-void
.end method
