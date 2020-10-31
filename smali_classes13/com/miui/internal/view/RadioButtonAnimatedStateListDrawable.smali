.class public Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable;
.super Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;
.source "RadioButtonAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable$RadioButtonConstantState;
    }
.end annotation


# instance fields
.field private mDrawPadding:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;-><init>()V

    const/16 v0, 0x13

    iput v0, p0, Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable;->mDrawPadding:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V

    const/16 v0, 0x13

    iput v0, p0, Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable;->mDrawPadding:I

    if-eqz p1, :cond_11

    sget v0, Lcom/miui/internal/R$dimen;->radio_button_drawable_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable;->mDrawPadding:I

    :cond_11
    return-void
.end method


# virtual methods
.method protected getCheckWidgetDrawableStyle()I
    .registers 2

    sget v0, Lcom/miui/internal/R$style;->CheckWidgetDrawable_RadioButton:I

    return v0
.end method

.method protected isSingleSelectionWidget()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected newCheckWidgetConstantState()Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
    .registers 2

    new-instance v0, Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable$RadioButtonConstantState;

    invoke-direct {v0}, Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable$RadioButtonConstantState;-><init>()V

    return-object v0
.end method

.method protected setCheckWidgetDrawableBounds(IIII)V
    .registers 9

    iget v0, p0, Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable;->mDrawPadding:I

    add-int v1, p1, v0

    add-int v2, p2, v0

    sub-int v3, p3, v0

    sub-int v0, p4, v0

    invoke-super {p0, v1, v2, v3, v0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(IIII)V

    return-void
.end method

.method protected setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget v0, p0, Lcom/miui/internal/view/RadioButtonAnimatedStateListDrawable;->mDrawPadding:I

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    invoke-super {p0, p1}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V

    return-void
.end method
