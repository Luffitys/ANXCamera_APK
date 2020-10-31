.class public Lcom/miui/internal/widget/AbsActionBarView$CollapseView;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CollapseView"
.end annotation


# instance fields
.field private isAcceptAlphaChange:Z

.field private mAlpha:F

.field private mTouchAnim:Lmiui/animation/IStateStyle;

.field private mView:Landroid/view/View;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->isAcceptAlphaChange:Z

    return-void
.end method


# virtual methods
.method public animTo(FIILmiui/animation/base/AnimConfig;)V
    .registers 10

    invoke-virtual {p0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->cancelAnim()V

    new-instance v0, Lmiui/animation/controller/AnimState;

    const-string v1, "to"

    invoke-direct {v0, v1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    iget-boolean v2, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->isAcceptAlphaChange:Z

    if-eqz v2, :cond_12

    move v2, p1

    goto :goto_14

    :cond_12
    iget v2, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mAlpha:F

    :goto_14
    const/4 v3, 0x0

    new-array v4, v3, [J

    invoke-virtual {v0, v1, v2, v4}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiui/animation/property/ViewProperty;->TRANSLATION_X:Lmiui/animation/property/ViewProperty;

    new-array v2, v3, [J

    invoke-virtual {v0, v1, p2, v2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiui/animation/property/ViewProperty;->TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

    new-array v2, v3, [J

    invoke-virtual {v0, v1, p3, v2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mTouchAnim:Lmiui/animation/IStateStyle;

    const/4 v2, 0x1

    new-array v2, v2, [Lmiui/animation/base/AnimConfig;

    aput-object p4, v2, v3

    invoke-interface {v1, v0, v2}, Lmiui/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    return-void
.end method

.method public attach(Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mView:Landroid/view/View;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mTouchAnim:Lmiui/animation/IStateStyle;

    return-void
.end method

.method public cancelAnim()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mTouchAnim:Lmiui/animation/IStateStyle;

    invoke-interface {v0}, Lmiui/animation/IStateStyle;->cancel()V

    return-void
.end method

.method public setAcceptAlphaChange(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->isAcceptAlphaChange:Z

    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    iput p1, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mAlpha:F

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    return-void
.end method

.method public setAnimFrom(FII)V
    .registers 9

    new-instance v0, Lmiui/animation/controller/AnimState;

    const-string v1, "from"

    invoke-direct {v0, v1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    iget-boolean v2, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->isAcceptAlphaChange:Z

    if-eqz v2, :cond_f

    move v2, p1

    goto :goto_11

    :cond_f
    iget v2, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mAlpha:F

    :goto_11
    const/4 v3, 0x0

    new-array v4, v3, [J

    invoke-virtual {v0, v1, v2, v4}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiui/animation/property/ViewProperty;->TRANSLATION_X:Lmiui/animation/property/ViewProperty;

    new-array v2, v3, [J

    invoke-virtual {v0, v1, p2, v2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiui/animation/property/ViewProperty;->TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

    new-array v2, v3, [J

    invoke-virtual {v0, v1, p3, v2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mTouchAnim:Lmiui/animation/IStateStyle;

    invoke-interface {v1, v0}, Lmiui/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    return-void
.end method

.method public setTransparent(II)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mView:Landroid/view/View;

    if-eqz v0, :cond_e

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mView:Landroid/view/View;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_e
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->mView:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method
