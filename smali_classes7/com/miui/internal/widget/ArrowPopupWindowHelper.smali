.class public Lcom/miui/internal/widget/ArrowPopupWindowHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/internal/widget/ArrowPopupWindowHelper;->getPopupElevation(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method private static getPopupElevation(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/miui/internal/R$attr;->arrowPopupWindowElevation:I

    invoke-static {p0, v0}, Lmiui/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method
