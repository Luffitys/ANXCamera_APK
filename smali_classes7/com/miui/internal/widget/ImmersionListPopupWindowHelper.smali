.class public Lcom/miui/internal/widget/ImmersionListPopupWindowHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ImmersionListPopupWindowHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)F
    .locals 0

    invoke-static {p0}, Lcom/miui/internal/widget/ImmersionListPopupWindowHelper;->getPopupShadowAlpha(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public static changeWindowBackground(Landroid/view/View;F)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const-string p0, "ImmersionListPopupWindowHelper"

    const-string p1, "can\'t change window dim with null view"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getPopupElevation(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/miui/internal/R$attr;->popupWindowElevation:I

    invoke-static {p0, v0}, Lmiui/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private static getPopupShadowAlpha(Landroid/content/Context;)F
    .locals 2

    sget v0, Lcom/miui/internal/R$attr;->popupWindowShadowAlpha:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmiui/util/AttributeResolver;->resolveFloat(Landroid/content/Context;IF)F

    move-result p0

    return p0
.end method

.method public static setPopupShadowAlpha(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/miui/internal/widget/ImmersionListPopupWindowHelper$1;

    invoke-direct {v0}, Lcom/miui/internal/widget/ImmersionListPopupWindowHelper$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
