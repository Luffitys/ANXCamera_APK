.class public Lcom/miui/internal/widget/DropDownPopupWindowHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "DropDownPopupWindowHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    const-string p0, "DropDownPopupWindowHelper"

    const-string p1, "can\'t change window dim with null view"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getAnimationStyle()I
    .locals 1

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/internal/R$style;->Animation_PopupWindow_DropDown:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getHeight()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public static getPopupElevation(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/miui/internal/R$attr;->popupWindowElevation:I

    invoke-static {p0, v0}, Lmiui/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getPopupMinWidth(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/miui/internal/R$attr;->popupWindowMinWidth:I

    invoke-static {p0, v0}, Lmiui/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getPopupShadowAlpha(Landroid/content/Context;)F
    .locals 2

    sget v0, Lcom/miui/internal/R$attr;->popupWindowShadowAlpha:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmiui/util/AttributeResolver;->resolveFloat(Landroid/content/Context;IF)F

    move-result p0

    return p0
.end method

.method public static getRealContentView(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 0

    return-object p1
.end method

.method public static getRealHeight(Landroid/content/Context;Landroid/view/View;)I
    .locals 0

    invoke-static {}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getHeight()I

    move-result p0

    return p0
.end method

.method public static getShowX([II)I
    .locals 2

    invoke-static {}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->isInRtl()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    aget p0, p0, v1

    goto :goto_0

    :cond_0
    aget p0, p0, v1

    add-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static getShowY([II)I
    .locals 0

    const/4 p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method public static getWidth()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method private static isInRtl()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static measureListViewWidth(Landroid/widget/ListView;)I
    .locals 10

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v1

    move v7, v6

    move-object v8, v5

    :goto_0
    if-ge v1, v4, :cond_2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v7, :cond_0

    move-object v8, v5

    move v7, v9

    :cond_0
    invoke-interface {v0, v1, v8, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-le v9, v6, :cond_1

    move v6, v9

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v6
.end method

.method public static setupContentView(Landroid/widget/FrameLayout;Landroid/view/View;IILmiui/widget/DropDownPopupWindow$ContainerController;)I
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getWidth()I

    move-result p0

    return p0

    :cond_0
    if-lez p2, :cond_1

    int-to-float p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setElevation(F)V

    :cond_1
    new-instance p0, Lcom/miui/internal/widget/DropDownPopupWindowHelper$1;

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/DropDownPopupWindowHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    instance-of p0, p1, Landroid/widget/ListView;

    if-eqz p0, :cond_2

    check-cast p1, Landroid/widget/ListView;

    invoke-static {p1}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->measureListViewWidth(Landroid/widget/ListView;)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    :goto_0
    if-ge p0, p3, :cond_3

    goto :goto_1

    :cond_3
    move p3, p0

    :goto_1
    return p3
.end method
