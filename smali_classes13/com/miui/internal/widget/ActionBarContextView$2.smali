.class Lcom/miui/internal/widget/ActionBarContextView$2;
.super Lmiui/animation/property/FloatProperty;
.source "ActionBarContextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/ActionBarContextView;->makeInOutAnimator(Z)Lmiui/animation/physics/SpringAnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/property/FloatProperty<",
        "Lcom/miui/internal/widget/ActionBarOverlayLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarContextView;

.field final synthetic val$animateToVisible:Z

.field final synthetic val$contentAnimTransFrom:I

.field final synthetic val$contentAnimTransTo:I

.field final synthetic val$menuView:Lcom/miui/internal/view/menu/ActionMenuView;

.field final synthetic val$primaryHeight:I

.field final synthetic val$translationY:F


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarContextView;Ljava/lang/String;Lcom/miui/internal/view/menu/ActionMenuView;FIZII)V
    .registers 9

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    iput-object p3, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->val$menuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iput p4, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->val$translationY:F

    iput p5, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->val$primaryHeight:I

    iput-boolean p6, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->val$animateToVisible:Z

    iput p7, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->val$contentAnimTransTo:I

    iput p8, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->val$contentAnimTransFrom:I

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/internal/widget/ActionBarOverlayLayout;)F
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView$2;->getValue(Lcom/miui/internal/widget/ActionBarOverlayLayout;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/miui/internal/widget/ActionBarOverlayLayout;F)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->val$menuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget v1, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->val$translationY:F

    iget v2, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->val$primaryHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sub-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setTranslationY(F)V

    float-to-int v0, p2

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->animateContentMarginBottom(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    # getter for: Lcom/miui/internal/widget/ActionBarContextView;->mAnimateStart:Z
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarContextView;->access$300(Lcom/miui/internal/widget/ActionBarContextView;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->val$animateToVisible:Z

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->notifyAnimationStart(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 v1, 0x1

    # setter for: Lcom/miui/internal/widget/ActionBarContextView;->mAnimateStart:Z
    invoke-static {v0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->access$302(Lcom/miui/internal/widget/ActionBarContextView;Z)Z

    return-void

    :cond_26
    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->val$contentAnimTransTo:I

    iget v1, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->val$contentAnimTransFrom:I

    if-ne v0, v1, :cond_2f

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_36

    :cond_2f
    int-to-float v2, v1

    sub-float v2, p2, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v0, v2, v0

    :goto_36
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContextView$2;->val$animateToVisible:Z

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/widget/ActionBarContextView;->notifyAnimationUpdate(ZF)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarContextView$2;->setValue(Lcom/miui/internal/widget/ActionBarOverlayLayout;F)V

    return-void
.end method
