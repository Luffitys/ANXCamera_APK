.class Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


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
    .registers 3

    iput-object p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 v0, -0x80000000

    iput v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 12

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-class v1, Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_2b
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_3d
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getVisibility()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_67

    move v3, v2

    goto :goto_68

    :cond_67
    move v3, v4

    :goto_68
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    move-object v3, v1

    iget-object v5, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object v6, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v6, v5}, Lmiui/widget/NumberPicker;->getLocationOnScreen([I)V

    aget v4, v5, v4

    aget v2, v5, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_87

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_87
    iget v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, v4, :cond_90

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_90
    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_ae

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v4, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v2, v4, :cond_b3

    :cond_ae
    const/16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_b3
    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_c9

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v4, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v2, v4, :cond_ce

    :cond_c9
    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_ce
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 14

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getVisibility()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_47

    move v3, v1

    goto :goto_48

    :cond_47
    move v3, v4

    :goto_48
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    move-object v3, v2

    iget-object v5, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object v6, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v6, v5}, Lmiui/widget/NumberPicker;->getLocationOnScreen([I)V

    aget v4, v5, v4

    aget v1, v5, v1

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_69

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_69
    iget v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_72

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_72
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7f

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_7f
    return-object v0
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 12

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, v2, :cond_19

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_19
    iget v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v2, :cond_22

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_22
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getVisibility()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_33

    move v2, v3

    goto :goto_34

    :cond_33
    move v2, v4

    :goto_34
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    move-object v2, v1

    iget-object v5, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object v6, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v6, v5}, Lmiui/widget/NumberPicker;->getLocationOnScreen([I)V

    aget v4, v5, v4

    aget v3, v5, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_78

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2a

    const/4 v0, 0x3

    if-eq p2, v0, :cond_a

    goto :goto_77

    :cond_a
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    return-void

    :cond_2a
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_50
    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_76

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_76
    nop

    :goto_77
    return-void

    :cond_78
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_97

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_97
    return-void
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mValue:I
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1900(Lmiui/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$2000(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # invokes: Lmiui/widget/NumberPicker;->getWrappedSelectorIndex(I)I
    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->access$2100(Lmiui/widget/NumberPicker;I)I

    move-result v0

    :cond_16
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mMinValue:I
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$2200(Lmiui/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_3e

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$700(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # invokes: Lmiui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;
    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->access$2300(Lmiui/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    :cond_2d
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$700(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mMinValue:I
    invoke-static {v2}, Lmiui/widget/NumberPicker;->access$2200(Lmiui/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    :goto_3d
    return-object v1

    :cond_3e
    const/4 v1, 0x0

    return-object v1
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mValue:I
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1900(Lmiui/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$2000(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # invokes: Lmiui/widget/NumberPicker;->getWrappedSelectorIndex(I)I
    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->access$2100(Lmiui/widget/NumberPicker;I)I

    move-result v0

    :cond_16
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mMaxValue:I
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$900(Lmiui/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_3e

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$700(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # invokes: Lmiui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;
    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->access$2300(Lmiui/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    :cond_2d
    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$700(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mMinValue:I
    invoke-static {v2}, Lmiui/widget/NumberPicker;->access$2200(Lmiui/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    :goto_3d
    return-object v1

    :cond_3e
    const/4 v1, 0x0

    return-object v1
.end method

.method private hasVirtualDecrementButton()Z
    .registers 3

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method private hasVirtualIncrementButton()Z
    .registers 3

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const-class v2, Landroid/widget/Button;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v2, v1}, Lmiui/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_48
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .registers 6

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v2, v1}, Lmiui/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_35
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10

    const/4 v0, -0x1

    if-eq p1, v0, :cond_cd

    const/4 v0, 0x1

    if-eq p1, v0, :cond_84

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v2, 0x3

    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v4

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result v5

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v6, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v6}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v6

    sub-int/2addr v1, v6

    add-int v6, v0, v1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1400(Lmiui/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mSelectionDividerHeight:I
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$1800(Lmiui/widget/NumberPicker;)I

    move-result v1

    add-int v7, v0, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    :cond_4b
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$1400(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mSelectionDividerHeight:I
    invoke-static {v2}, Lmiui/widget/NumberPicker;->access$1800(Lmiui/widget/NumberPicker;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v3}, Lmiui/widget/NumberPicker;->access$1200(Lmiui/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mSelectionDividerHeight:I
    invoke-static {v4}, Lmiui/widget/NumberPicker;->access$1800(Lmiui/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    :cond_84
    const/4 v2, 0x1

    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v4

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1200(Lmiui/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mSelectionDividerHeight:I
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$1800(Lmiui/widget/NumberPicker;)I

    move-result v1

    sub-int v5, v0, v1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v6, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v6}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v6

    sub-int/2addr v1, v6

    add-int v6, v0, v1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v1

    iget-object v7, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v7}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v7

    sub-int/2addr v1, v7

    add-int v7, v0, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    :cond_cd
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v4

    iget-object v5, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p2, v2, :cond_29

    if-eq p2, v5, :cond_25

    if-eq p2, v4, :cond_25

    if-eq p2, v3, :cond_25

    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_25
    invoke-direct {p0, v0, p2, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :cond_29
    invoke-direct {p0, v0, v3, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {p0, v0, v4, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {p0, v0, v5, v1}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 13

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_14c

    const/high16 v0, 0x10000

    const v6, 0x8000

    const/16 v7, 0x10

    if-eq p1, v4, :cond_f3

    const/4 v8, 0x2

    if-eq p1, v8, :cond_6d

    const/4 v8, 0x3

    if-eq p1, v8, :cond_1c

    goto/16 :goto_159

    :cond_1c
    if-eq p2, v7, :cond_57

    if-eq p2, v3, :cond_3d

    if-eq p2, v2, :cond_23

    return v5

    :cond_23
    iget v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_3c

    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lmiui/widget/NumberPicker;->access$1400(Lmiui/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    return v4

    :cond_3c
    return v5

    :cond_3d
    iget v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, p1, :cond_56

    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lmiui/widget/NumberPicker;->access$1400(Lmiui/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    return v4

    :cond_56
    return v5

    :cond_57
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6c

    if-ne p1, v4, :cond_62

    move v5, v4

    :cond_62
    move v0, v5

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # invokes: Lmiui/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->access$1500(Lmiui/widget/NumberPicker;Z)V

    invoke-virtual {p0, p1, v4}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_6c
    return v5

    :cond_6d
    if-eq p2, v4, :cond_d3

    if-eq p2, v8, :cond_b4

    if-eq p2, v7, :cond_aa

    if-eq p2, v3, :cond_96

    if-eq p2, v2, :cond_82

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_82
    iget v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_95

    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    return v4

    :cond_95
    return v5

    :cond_96
    iget v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, p1, :cond_a9

    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    return v4

    :cond_a9
    return v5

    :cond_aa
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b3

    return v4

    :cond_b3
    return v5

    :cond_b4
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    return v4

    :cond_d2
    return v5

    :cond_d3
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_f2

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    return v0

    :cond_f2
    return v5

    :cond_f3
    if-eq p2, v7, :cond_13a

    if-eq p2, v3, :cond_11a

    if-eq p2, v2, :cond_fa

    return v5

    :cond_fa
    iget v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_119

    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1200(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v5, v1, v2, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    return v4

    :cond_119
    return v5

    :cond_11a
    iget v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, p1, :cond_139

    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v6}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1200(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v5, v1, v2, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    return v4

    :cond_139
    return v5

    :cond_13a
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14b

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # invokes: Lmiui/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v4}, Lmiui/widget/NumberPicker;->access$1500(Lmiui/widget/NumberPicker;Z)V

    invoke-virtual {p0, p1, v4}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_14b
    return v5

    :cond_14c
    if-eq p2, v3, :cond_1b0

    if-eq p2, v2, :cond_1a8

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_183

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_15e

    nop

    :goto_159
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_15e
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_182

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_17c

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_182

    :cond_17c
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # invokes: Lmiui/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v5}, Lmiui/widget/NumberPicker;->access$1500(Lmiui/widget/NumberPicker;Z)V

    return v4

    :cond_182
    return v5

    :cond_183
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a7

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1a1

    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_1a7

    :cond_1a1
    iget-object v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lmiui/widget/NumberPicker;

    # invokes: Lmiui/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v4}, Lmiui/widget/NumberPicker;->access$1500(Lmiui/widget/NumberPicker;Z)V

    return v4

    :cond_1a7
    return v5

    :cond_1a8
    iget v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v0, p1, :cond_1af

    iput v1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return v4

    :cond_1af
    return v5

    :cond_1b0
    iget v0, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, p1, :cond_1b7

    iput p1, p0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return v4

    :cond_1b7
    return v5
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    goto :goto_2b

    :cond_a
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_2b

    nop

    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_2b

    :cond_19
    invoke-direct {p0, p2}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_2b

    :cond_1d
    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_2b

    nop

    invoke-direct {p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    :cond_2b
    :goto_2b
    return-void
.end method
