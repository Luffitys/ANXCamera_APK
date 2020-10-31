.class Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;
.super Lmiui/animation/listener/TransitionListener;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerTransitionListener"
.end annotation


# instance fields
.field private mNewState:I

.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/internal/widget/ActionBarView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/ActionBarView;I)V
    .registers 4

    invoke-direct {p0}, Lmiui/animation/listener/TransitionListener;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;->mNewState:I

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 5

    invoke-super {p0, p1}, Lmiui/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isResizable()Z

    move-result v1

    # setter for: Lcom/miui/internal/widget/ActionBarView;->mTempResizable:Z
    invoke-static {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->access$2502(Lcom/miui/internal/widget/ActionBarView;Z)Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->setResizable(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(I)V

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$2600(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 5

    invoke-super {p0, p1}, Lmiui/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget v1, p0, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;->mNewState:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(I)V

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mTempResizable:Z
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$2500(Lcom/miui/internal/widget/ActionBarView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->setResizable(Z)V

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mInSearchMode:Z
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$2700(Lcom/miui/internal/widget/ActionBarView;)Z

    move-result v1

    if-eqz v1, :cond_29

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$2600(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_31

    :cond_29
    # getter for: Lcom/miui/internal/widget/ActionBarView;->mCollapseController:Lcom/miui/internal/widget/AbsActionBarView$CollapseView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$2600(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :goto_31
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiui/animation/property/IIntValueProperty;IFZ)V
    .registers 7

    invoke-super/range {p0 .. p5}, Lmiui/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiui/animation/property/IIntValueProperty;IFZ)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    if-nez v0, :cond_e

    return-void

    :cond_e
    # setter for: Lcom/miui/internal/widget/ActionBarView;->mPendingHeight:I
    invoke-static {v0, p3}, Lcom/miui/internal/widget/ActionBarView;->access$2202(Lcom/miui/internal/widget/ActionBarView;I)I

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->requestLayout()V

    return-void
.end method
