.class Lmiui/widget/ClearableEditText$AccessHelper;
.super Lcom/miui/internal/widget/ExploreByTouchHelper;
.source ""


# static fields
.field private static final CHILD_ID:I


# instance fields
.field private final forView:Landroid/view/View;

.field private final mTempParentBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lmiui/widget/ClearableEditText;


# direct methods
.method public constructor <init>(Lmiui/widget/ClearableEditText;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-direct {p0, p2}, Lcom/miui/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    return-void
.end method

.method private getChildRect(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    iget-object v1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {v0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {v2}, Lmiui/widget/ClearableEditText;->access$300(Lmiui/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object p0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object p0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {p0}, Lmiui/widget/ClearableEditText;->access$300(Lmiui/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    sub-int/2addr v1, p0

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    return-void
.end method

.method private getDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/miui/internal/R$string;->clearable_edittext_clear_description:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isVirtualView(FF)Z
    .locals 3

    iget-object p2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {p2}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {p2}, Lmiui/widget/ClearableEditText;->access$300(Lmiui/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object p0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p2, p0

    int-to-float p0, p2

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object p2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getWidth()I

    move-result p2

    iget-object v2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    iget-object p0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {p0}, Lmiui/widget/ClearableEditText;->access$300(Lmiui/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    sub-int/2addr p2, p0

    int-to-float p0, p2

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 1

    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {v0}, Lmiui/widget/ClearableEditText;->access$000(Lmiui/widget/ClearableEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lmiui/widget/ClearableEditText$AccessHelper;->isVirtualView(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p0, -0x80000000

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {p0}, Lmiui/widget/ClearableEditText;->access$000(Lmiui/widget/ClearableEditText;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 p3, 0x0

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x10

    if-eq p2, p1, :cond_1

    return p3

    :cond_1
    iget-object p0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {p0}, Lmiui/widget/ClearableEditText;->access$200(Lmiui/widget/ClearableEditText;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x800

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {p1}, Lmiui/widget/ClearableEditText;->access$000(Lmiui/widget/ClearableEditText;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    const p1, 0x8000

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/ClearableEditText$AccessHelper;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p0, Lmiui/widget/ClearableEditText;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/ClearableEditText$AccessHelper;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const-class p1, Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lmiui/widget/ClearableEditText$AccessHelper;->getChildRect(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method
