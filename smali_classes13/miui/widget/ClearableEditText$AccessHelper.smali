.class Lmiui/widget/ClearableEditText$AccessHelper;
.super Lcom/miui/internal/widget/ExploreByTouchHelper;
.source "ClearableEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ClearableEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessHelper"
.end annotation


# static fields
.field private static final CHILD_ID:I


# instance fields
.field private final forView:Landroid/view/View;

.field private final mTempParentBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lmiui/widget/ClearableEditText;


# direct methods
.method public constructor <init>(Lmiui/widget/ClearableEditText;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-direct {p0, p2}, Lcom/miui/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    return-void
.end method

.method private getChildRect(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    iget-object v1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {v0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {v1}, Lmiui/widget/ClearableEditText;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    # getter for: Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lmiui/widget/ClearableEditText;->access$300(Lmiui/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {v2}, Lmiui/widget/ClearableEditText;->getPaddingLeft()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4e

    :cond_2f
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {v1}, Lmiui/widget/ClearableEditText;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {v2}, Lmiui/widget/ClearableEditText;->getPaddingRight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    # getter for: Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lmiui/widget/ClearableEditText;->access$300(Lmiui/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :goto_4e
    return-void
.end method

.method private getDescription()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {v0}, Lmiui/widget/ClearableEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->clearable_edittext_clear_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isVirtualView(FF)Z
    .registers 7

    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {v0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    # getter for: Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lmiui/widget/ClearableEditText;->access$300(Lmiui/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v3, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {v3}, Lmiui/widget/ClearableEditText;->getPaddingLeft()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    return v1

    :cond_25
    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {v0}, Lmiui/widget/ClearableEditText;->getWidth()I

    move-result v0

    iget-object v3, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {v3}, Lmiui/widget/ClearableEditText;->getPaddingRight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iget-object v3, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    # getter for: Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lmiui/widget/ClearableEditText;->access$300(Lmiui/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_45

    goto :goto_46

    :cond_45
    move v1, v2

    :goto_46
    return v1
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .registers 4

    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    # getter for: Lmiui/widget/ClearableEditText;->mShown:Z
    invoke-static {v0}, Lmiui/widget/ClearableEditText;->access$000(Lmiui/widget/ClearableEditText;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1, p2}, Lmiui/widget/ClearableEditText$AccessHelper;->isVirtualView(FF)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    const/high16 v0, -0x80000000

    return v0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    # getter for: Lmiui/widget/ClearableEditText;->mShown:Z
    invoke-static {v0}, Lmiui/widget/ClearableEditText;->access$000(Lmiui/widget/ClearableEditText;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 6

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_6

    return v0

    :cond_6
    const/16 v1, 0x10

    if-eq p2, v1, :cond_b

    return v0

    :cond_b
    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    # invokes: Lmiui/widget/ClearableEditText;->onClearButtonClick()V
    invoke-static {v0}, Lmiui/widget/ClearableEditText;->access$200(Lmiui/widget/ClearableEditText;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x800

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    # getter for: Lmiui/widget/ClearableEditText;->mShown:Z
    invoke-static {v0}, Lmiui/widget/ClearableEditText;->access$000(Lmiui/widget/ClearableEditText;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_23
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-direct {p0}, Lmiui/widget/ClearableEditText$AccessHelper;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lmiui/widget/ClearableEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    invoke-direct {p0}, Lmiui/widget/ClearableEditText$AccessHelper;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lmiui/widget/ClearableEditText$AccessHelper;->getChildRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method
