.class public Lcom/miui/internal/widget/AbsActionBarView$CollapseView;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private isAcceptAlphaChange:Z

.field private mAlpha:F

.field private mTouchAnim:Lmiui/animation/IStateStyle;

.field private mView:Landroid/view/View;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->isAcceptAlphaChange:Z

    return-void
.end method


# virtual methods
.method public animTo(FIILmiui/animation/base/AnimConfig;)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->cancelAnim()V

    new-instance v0, Lmiui/animation/controller/AnimState;

    const-string v1, "to"

    invoke-direct {v0, v1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    iget-boolean v2, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->isAcceptAlphaChange:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mAlpha:F

    :goto_0
    const/4 v2, 0x0

    new-array v3, v2, [J

    invoke-virtual {v0, v1, p1, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiui/animation/property/ViewProperty;->TRANSLATION_X:Lmiui/animation/property/ViewProperty;

    new-array v1, v2, [J

    invoke-virtual {p1, v0, p2, v1}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiui/animation/property/ViewProperty;->TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

    new-array v0, v2, [J

    invoke-virtual {p1, p2, p3, v0}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mTouchAnim:Lmiui/animation/IStateStyle;

    const/4 p2, 0x1

    new-array p2, p2, [Lmiui/animation/base/AnimConfig;

    aput-object p4, p2, v2

    invoke-interface {p0, p1, p2}, Lmiui/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    return-void
.end method

.method public attach(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mView:Landroid/view/View;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mTouchAnim:Lmiui/animation/IStateStyle;

    return-void
.end method

.method public cancelAnim()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mTouchAnim:Lmiui/animation/IStateStyle;

    invoke-interface {p0}, Lmiui/animation/ICancelableStyle;->cancel()V

    return-void
.end method

.method public setAcceptAlphaChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->isAcceptAlphaChange:Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mAlpha:F

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setAnimFrom(FII)V
    .locals 4

    new-instance v0, Lmiui/animation/controller/AnimState;

    const-string v1, "from"

    invoke-direct {v0, v1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    iget-boolean v2, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->isAcceptAlphaChange:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mAlpha:F

    :goto_0
    const/4 v2, 0x0

    new-array v3, v2, [J

    invoke-virtual {v0, v1, p1, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiui/animation/property/ViewProperty;->TRANSLATION_X:Lmiui/animation/property/ViewProperty;

    new-array v1, v2, [J

    invoke-virtual {p1, v0, p2, v1}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiui/animation/property/ViewProperty;->TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

    new-array v0, v2, [J

    invoke-virtual {p1, p2, p3, v0}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mTouchAnim:Lmiui/animation/IStateStyle;

    invoke-interface {p0, p1}, Lmiui/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    return-void
.end method

.method public setTransparent(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mView:Landroid/view/View;

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
