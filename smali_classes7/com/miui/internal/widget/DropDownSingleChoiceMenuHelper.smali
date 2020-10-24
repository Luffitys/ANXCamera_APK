.class public Lcom/miui/internal/widget/DropDownSingleChoiceMenuHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getView(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;
    .locals 3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    invoke-virtual {p3}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$dimen;->drop_down_menu_padding_small:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/miui/internal/R$dimen;->drop_down_menu_padding_small:I

    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$dimen;->drop_down_menu_padding_large:I

    goto :goto_0

    :cond_2
    sub-int/2addr p1, v2

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$dimen;->drop_down_menu_padding_small:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/miui/internal/R$dimen;->drop_down_menu_padding_large:I

    goto :goto_1

    :goto_2
    invoke-virtual {p3, v0, p1, v1, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-object p3
.end method
