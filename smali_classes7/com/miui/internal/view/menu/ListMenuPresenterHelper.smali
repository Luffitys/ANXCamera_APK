.class public Lcom/miui/internal/view/menu/ListMenuPresenterHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcAndSetPadding(Landroid/content/Context;IILandroid/view/View;)V
    .locals 2

    invoke-virtual {p3}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    invoke-virtual {p3}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$dimen;->list_menu_item_padding_small:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/miui/internal/R$dimen;->list_menu_item_padding_large:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$dimen;->list_menu_item_padding_small:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/miui/internal/R$dimen;->list_menu_item_padding_small:I

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p3, v0, p1, v1, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method
