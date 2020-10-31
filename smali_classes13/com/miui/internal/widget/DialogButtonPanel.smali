.class public Lcom/miui/internal/widget/DialogButtonPanel;
.super Landroid/widget/LinearLayout;
.source "DialogButtonPanel.java"


# instance fields
.field private final HORIZONTAL_MARGIN:I

.field private final VERTICAL_MARGIN:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/DialogButtonPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->dialog_btn_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/DialogButtonPanel;->HORIZONTAL_MARGIN:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/DialogButtonPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->dialog_btn_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/DialogButtonPanel;->VERTICAL_MARGIN:I

    return-void
.end method

.method private clearParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    return-void
.end method

.method private handleLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 5

    invoke-virtual {p0}, Lcom/miui/internal/widget/DialogButtonPanel;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/DialogButtonPanel;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    const/4 v1, -0x1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-lez v0, :cond_1f

    iget v1, p0, Lcom/miui/internal/widget/DialogButtonPanel;->VERTICAL_MARGIN:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1f

    :cond_15
    const/4 v1, 0x0

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-lez v0, :cond_1f

    iget v1, p0, Lcom/miui/internal/widget/DialogButtonPanel;->HORIZONTAL_MARGIN:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    move-object v0, p3

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/DialogButtonPanel;->handleLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public clearVisibleChildMargins()V
    .registers 5

    invoke-virtual {p0}, Lcom/miui/internal/widget/DialogButtonPanel;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_17

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/DialogButtonPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_13

    goto :goto_17

    :cond_13
    const/4 v1, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    :goto_17
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/miui/internal/widget/DialogButtonPanel;->clearParams(Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_22
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/DialogButtonPanel;->clearParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method
