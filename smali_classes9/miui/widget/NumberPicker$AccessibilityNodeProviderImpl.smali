.class Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source ""


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 p1, -0x80000000

    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-class v1, Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_0
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_1
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    aget p2, p1, p2

    aget p1, p1, v2

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    const/16 p1, 0x40

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_3
    iget p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p1, p2, :cond_4

    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_4
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_6

    :cond_5
    const/16 p1, 0x1000

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_6
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result p0

    if-le p1, p0, :cond_8

    :cond_7
    const/16 p0, 0x2000

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_8
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object p5, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p5, p3}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    aget p4, p3, p4

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_1

    const/16 p2, 0x40

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_2

    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_3
    return-object v0
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    iget v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v2, :cond_1

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    aget p0, p1, p3

    aget p1, p1, p2

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p2}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p2}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1900(Lmiui/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$2000(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->access$2100(Lmiui/widget/NumberPicker;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$2200(Lmiui/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$700(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p0, v0}, Lmiui/widget/NumberPicker;->access$2300(Lmiui/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$700(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p0}, Lmiui/widget/NumberPicker;->access$2200(Lmiui/widget/NumberPicker;)I

    move-result p0

    sub-int/2addr v0, p0

    aget-object p0, v1, v0

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1900(Lmiui/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$2000(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->access$2100(Lmiui/widget/NumberPicker;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$900(Lmiui/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$700(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p0, v0}, Lmiui/widget/NumberPicker;->access$2300(Lmiui/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$700(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p0}, Lmiui/widget/NumberPicker;->access$2200(Lmiui/widget/NumberPicker;)I

    move-result p0

    sub-int/2addr v0, p0

    aget-object p0, v1, v0

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasVirtualDecrementButton()Z
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result p0

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result p0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p0, p0, p2}, Landroid/widget/LinearLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 2

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p0, p0, p1}, Landroid/widget/LinearLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x3

    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v4

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v5, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->access$1400(Lmiui/widget/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1800(Lmiui/widget/NumberPicker;)I

    move-result v0

    add-int v6, p1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1400(Lmiui/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$1800(Lmiui/widget/NumberPicker;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v2}, Lmiui/widget/NumberPicker;->access$1200(Lmiui/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v3}, Lmiui/widget/NumberPicker;->access$1800(Lmiui/widget/NumberPicker;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->access$1200(Lmiui/widget/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1800(Lmiui/widget/NumberPicker;)I

    move-result v0

    sub-int v4, p1, v0

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v5, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v6, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTop()I

    move-result v6

    sub-int/2addr v0, v6

    add-int v6, p1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v5, :cond_1

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0, v0, p2, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :cond_2
    invoke-direct {p0, v0, v3, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {p0, v0, v4, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {p0, v0, v5, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 9

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_1a

    const/high16 v0, 0x10000

    const v6, 0x8000

    const/16 v7, 0x10

    if-eq p1, v4, :cond_13

    const/4 v8, 0x2

    if-eq p1, v8, :cond_8

    const/4 v8, 0x3

    if-eq p1, v8, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p2, v7, :cond_5

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_1

    return v5

    :cond_1
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_2

    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    move-result p2

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p0}, Lmiui/widget/NumberPicker;->access$1400(Lmiui/widget/NumberPicker;)I

    move-result p0

    invoke-virtual {p1, v5, v5, p2, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_2
    return v5

    :cond_3
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_4

    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    move-result p2

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p0}, Lmiui/widget/NumberPicker;->access$1400(Lmiui/widget/NumberPicker;)I

    move-result p0

    invoke-virtual {p1, v5, v5, p2, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_4
    return v5

    :cond_5
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    if-ne p1, v4, :cond_6

    move v5, v4

    :cond_6
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p2, v5}, Lmiui/widget/NumberPicker;->access$1500(Lmiui/widget/NumberPicker;Z)V

    invoke-virtual {p0, p1, v4}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_7
    return v5

    :cond_8
    if-eq p2, v4, :cond_11

    if-eq p2, v8, :cond_f

    if-eq p2, v7, :cond_d

    if-eq p2, v3, :cond_b

    if-eq p2, v2, :cond_9

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_9
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_a

    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return v4

    :cond_a
    return v5

    :cond_b
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_c

    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return v4

    :cond_c
    return v5

    :cond_d
    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_e

    return v4

    :cond_e
    return v5

    :cond_f
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    return v4

    :cond_10
    return v5

    :cond_11
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    move-result p0

    return p0

    :cond_12
    return v5

    :cond_13
    if-eq p2, v7, :cond_18

    if-eq p2, v3, :cond_16

    if-eq p2, v2, :cond_14

    return v5

    :cond_14
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_15

    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->access$1200(Lmiui/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getRight()I

    move-result p3

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {p1, v5, p2, p3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_15
    return v5

    :cond_16
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_17

    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p1}, Lmiui/widget/NumberPicker;->access$1200(Lmiui/widget/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getRight()I

    move-result p3

    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {p1, v5, p2, p3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_17
    return v5

    :cond_18
    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p2, v4}, Lmiui/widget/NumberPicker;->access$1500(Lmiui/widget/NumberPicker;Z)V

    invoke-virtual {p0, p1, v4}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_19
    return v5

    :cond_1a
    if-eq p2, v3, :cond_23

    if-eq p2, v2, :cond_21

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_1e

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1b

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_1b
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_1d

    :cond_1c
    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p0, v5}, Lmiui/widget/NumberPicker;->access$1500(Lmiui/widget/NumberPicker;Z)V

    return v4

    :cond_1d
    return v5

    :cond_1e
    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_1f

    iget-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {p2}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_20

    :cond_1f
    iget-object p0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p0, v4}, Lmiui/widget/NumberPicker;->access$1500(Lmiui/widget/NumberPicker;Z)V

    return v4

    :cond_20
    return v5

    :cond_21
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_22

    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return v4

    :cond_22
    return v5

    :cond_23
    iget p2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_24

    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return v4

    :cond_24
    return v5
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
