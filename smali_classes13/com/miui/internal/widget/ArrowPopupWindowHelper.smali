.class public Lcom/miui/internal/widget/ArrowPopupWindowHelper;
.super Ljava/lang/Object;
.source "ArrowPopupWindowHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/widget/ArrowPopupWindowHelper;->getPopupElevation(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method private static getPopupElevation(Landroid/content/Context;)I
    .registers 2

    sget v0, Lcom/miui/internal/R$attr;->arrowPopupWindowElevation:I

    invoke-static {p0, v0}, Lmiui/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method
