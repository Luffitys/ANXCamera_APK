.class public abstract Lcom/android/internal/globalactions/SinglePressAction;
.super Ljava/lang/Object;
.source "SinglePressAction.java"

# interfaces
.implements Lcom/android/internal/globalactions/Action;


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIconResId:I

    iput p2, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessageResId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIconResId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessageResId:I

    iput-object p3, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 11

    const v0, 0x1090080

    const/4 v1, 0x0

    invoke-virtual {p4, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x10204bc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/globalactions/SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_38

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38

    :cond_33
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_38
    :goto_38
    if-eqz v1, :cond_52

    iget-object v5, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_47

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_52

    :cond_47
    iget v5, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIconResId:I

    if-eqz v5, :cond_52

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_52
    :goto_52
    if-eqz v2, :cond_61

    iget-object v5, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5c

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_61

    :cond_5c
    iget v5, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessageResId:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_61
    :goto_61
    return-object v0
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method
