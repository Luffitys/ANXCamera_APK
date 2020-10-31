.class public Lcom/miui/internal/widget/ImmersionListPopupWindowHelper;
.super Ljava/lang/Object;
.source "ImmersionListPopupWindowHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImmersionListPopupWindowHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)F
    .registers 2

    invoke-static {p0}, Lcom/miui/internal/widget/ImmersionListPopupWindowHelper;->getPopupShadowAlpha(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static changeWindowBackground(Landroid/view/View;F)V
    .registers 5

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2a

    :cond_23
    const-string v0, "ImmersionListPopupWindowHelper"

    const-string v1, "can\'t change window dim with null view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method public static getPopupElevation(Landroid/content/Context;)I
    .registers 2

    sget v0, Lcom/miui/internal/R$attr;->popupWindowElevation:I

    invoke-static {p0, v0}, Lmiui/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method private static getPopupShadowAlpha(Landroid/content/Context;)F
    .registers 3

    sget v0, Lcom/miui/internal/R$attr;->popupWindowShadowAlpha:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmiui/util/AttributeResolver;->resolveFloat(Landroid/content/Context;IF)F

    move-result v0

    return v0
.end method

.method public static setPopupShadowAlpha(Landroid/view/View;)V
    .registers 2

    new-instance v0, Lcom/miui/internal/widget/ImmersionListPopupWindowHelper$1;

    invoke-direct {v0}, Lcom/miui/internal/widget/ImmersionListPopupWindowHelper$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
