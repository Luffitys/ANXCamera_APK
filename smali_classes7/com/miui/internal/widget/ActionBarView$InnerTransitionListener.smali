.class Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;
.super Lmiui/animation/listener/TransitionListener;
.source ""


# instance fields
.field private mNewState:I

.field private mRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/ActionBarView;I)V
    .locals 1

    invoke-direct {p0}, Lmiui/animation/listener/TransitionListener;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;->mNewState:I

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/widget/ActionBarView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->isResizable()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->access$2502(Lcom/miui/internal/widget/ActionBarView;Z)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setResizable(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(I)V

    invoke-static {p0}, Lcom/miui/internal/widget/ActionBarView;->access$2600(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/widget/ActionBarView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p0, p0, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;->mNewState:I

    invoke-virtual {p1, p0}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(I)V

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$2500(Lcom/miui/internal/widget/ActionBarView;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/internal/widget/ActionBarView;->setResizable(Z)V

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$2700(Lcom/miui/internal/widget/ActionBarView;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$2600(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    move-result-object p0

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$2600(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiui/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lmiui/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiui/animation/property/IIntValueProperty;IFZ)V

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/widget/ActionBarView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p3}, Lcom/miui/internal/widget/ActionBarView;->access$2202(Lcom/miui/internal/widget/ActionBarView;I)I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
