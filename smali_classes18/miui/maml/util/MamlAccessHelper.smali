.class public Lmiui/maml/util/MamlAccessHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "MamlAccessHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MamlAccessHelper"


# instance fields
.field mHostView:Landroid/view/View;

.field mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    iput-object p1, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    iput-object p2, p0, Lmiui/maml/util/MamlAccessHelper;->mHostView:Landroid/view/View;

    invoke-virtual {p1, p0}, Lmiui/maml/ScreenElementRoot;->setMamlAccessHelper(Lmiui/maml/util/MamlAccessHelper;)V

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .registers 7

    iget-object v0, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v3

    if-eqz v3, :cond_23

    return v1

    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_26
    const/high16 v0, -0x80000000

    return v0
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p1, v1}, Landroid/util/IntArray;->add(I)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_21
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 7

    iget-object v0, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    const/16 v2, 0x10

    if-eq p2, v2, :cond_a

    return v1

    :cond_a
    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v0

    if-ltz p1, :cond_2d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2d

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/AnimatedScreenElement;

    const-string v2, "up"

    invoke-virtual {v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    instance-of v2, v1, Lmiui/maml/elements/ButtonScreenElement;

    if-eqz v2, :cond_2b

    move-object v2, v1

    check-cast v2, Lmiui/maml/elements/ButtonScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ButtonScreenElement;->onActionUp()V

    :cond_2b
    const/4 v2, 0x1

    return v2

    :cond_2d
    return v1

    :cond_2e
    return v1
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v0

    if-ltz p1, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1d

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1d
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 12

    iget-object v0, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_89

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v0

    const-string v1, "MamlAccessHelper"

    if-ltz p1, :cond_67

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_67

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_38

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "element.getContentDescription() == null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lmiui/maml/elements/AnimatedScreenElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v6

    invoke-virtual {v2}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v7

    invoke-virtual {v2}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_89

    :cond_67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "virtualViewId not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    :cond_89
    :goto_89
    return-void
.end method

.method public performAccessibilityAction(II)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/util/MamlAccessHelper;->mHostView:Landroid/view/View;

    new-instance v1, Lmiui/maml/util/MamlAccessHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lmiui/maml/util/MamlAccessHelper$1;-><init>(Lmiui/maml/util/MamlAccessHelper;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeRoot()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-void
.end method
