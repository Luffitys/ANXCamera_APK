.class public Lcom/miui/internal/widget/DropDownPopupWindowHelper;
.super Ljava/lang/Object;
.source "DropDownPopupWindowHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DropDownPopupWindowHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    const-string v0, "DropDownPopupWindowHelper"

    const-string v1, "can\'t change window dim with null view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method public static getAnimationStyle()I
    .registers 1

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/miui/internal/R$style;->Animation_PopupWindow_DropDown:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static getHeight()I
    .registers 1

    const/4 v0, -0x2

    return v0
.end method

.method public static getPopupElevation(Landroid/content/Context;)I
    .registers 2

    sget v0, Lcom/miui/internal/R$attr;->popupWindowElevation:I

    invoke-static {p0, v0}, Lmiui/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getPopupMinWidth(Landroid/content/Context;)I
    .registers 2

    sget v0, Lcom/miui/internal/R$attr;->popupWindowMinWidth:I

    invoke-static {p0, v0}, Lmiui/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getPopupShadowAlpha(Landroid/content/Context;)F
    .registers 3

    sget v0, Lcom/miui/internal/R$attr;->popupWindowShadowAlpha:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmiui/util/AttributeResolver;->resolveFloat(Landroid/content/Context;IF)F

    move-result v0

    return v0
.end method

.method public static getRealContentView(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 2

    return-object p1
.end method

.method public static getRealHeight(Landroid/content/Context;Landroid/view/View;)I
    .registers 3

    invoke-static {}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getShowX([II)I
    .registers 4

    invoke-static {}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->isInRtl()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    aget v0, p0, v1

    goto :goto_d

    :cond_a
    aget v0, p0, v1

    add-int/2addr v0, p1

    :goto_d
    return v0
.end method

.method public static getShowY([II)I
    .registers 3

    const/4 v0, 0x1

    aget v0, p0, v0

    return v0
.end method

.method public static getWidth()I
    .registers 1

    const/4 v0, -0x2

    return v0
.end method

.method private static isInRtl()Z
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private static measureListViewWidth(Landroid/widget/ListView;)I
    .registers 11

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    nop

    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    nop

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_17
    if-ge v7, v6, :cond_32

    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v3, :cond_21

    move v3, v8

    const/4 v2, 0x0

    :cond_21
    invoke-interface {v0, v7, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-le v9, v1, :cond_2f

    move v1, v9

    :cond_2f
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_32
    return v1
.end method

.method public static setupContentView(Landroid/widget/FrameLayout;Landroid/view/View;IILmiui/widget/DropDownPopupWindow$ContainerController;)I
    .registers 6

    if-nez p1, :cond_7

    invoke-static {}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getWidth()I

    move-result v0

    return v0

    :cond_7
    if-lez p2, :cond_d

    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    :cond_d
    new-instance v0, Lcom/miui/internal/widget/DropDownPopupWindowHelper$1;

    invoke-direct {v0, p1}, Lcom/miui/internal/widget/DropDownPopupWindowHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_21

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v0}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->measureListViewWidth(Landroid/widget/ListView;)I

    move-result v0

    goto :goto_29

    :cond_21
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_29
    if-ge v0, p3, :cond_2c

    move v0, p3

    :cond_2c
    return v0
.end method
