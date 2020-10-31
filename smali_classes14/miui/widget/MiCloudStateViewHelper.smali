.class public Lmiui/widget/MiCloudStateViewHelper;
.super Ljava/lang/Object;
.source "MiCloudStateViewHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisablePaddingBottom(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$dimen;->cloud_state_message_bg_padding_outter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getEnablePaddingBottom(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$dimen;->cloud_state_message_enabled_bg_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getEnablePaddingTop(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$dimen;->cloud_state_message_enabled_bg_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getTextViewsMargin(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$dimen;->cloud_state_message_textview_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static setLayoutMinHeight(Landroid/content/Context;Landroid/view/View;I)V
    .registers 5

    nop

    invoke-static {p0}, Lmiui/widget/MiCloudStateViewHelper;->getEnablePaddingTop(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {p0}, Lmiui/widget/MiCloudStateViewHelper;->getEnablePaddingBottom(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public static setUnsyncedTextColor(Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$color;->cloud_state_message_textcolor_unsynced:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
