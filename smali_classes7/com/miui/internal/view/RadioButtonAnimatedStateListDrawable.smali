.class public Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable;
.super Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;
.source ""


# instance fields
.field private mDrawPadding:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;-><init>()V

    const/16 v0, 0x13

    iput v0, p0, Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable;->mDrawPadding:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V

    const/16 p2, 0x13

    iput p2, p0, Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable;->mDrawPadding:I

    if-eqz p1, :cond_0

    sget p2, Lcom/miui/internal/R$dimen;->radio_button_drawable_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable;->mDrawPadding:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected getCheckWidgetDrawableStyle()I
    .locals 0

    sget p0, Lcom/miui/internal/R$style;->CheckWidgetDrawable_RadioButton:I

    return p0
.end method

.method protected isSingleSelectionWidget()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected newCheckWidgetConstantState()Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
    .locals 0

    new-instance p0, Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable$RadioButtonConstantState;

    invoke-direct {p0}, Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable$RadioButtonConstantState;-><init>()V

    return-object p0
.end method

.method protected setCheckWidgetDrawableBounds(IIII)V
    .locals 1

    iget v0, p0, Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable;->mDrawPadding:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    sub-int/2addr p4, v0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(IIII)V

    return-void
.end method

.method protected setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget v0, p0, Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable;->mDrawPadding:I

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    invoke-super {p0, p1}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V

    return-void
.end method
