.class public Lmiui/preference/ValuePreference;
.super Landroid/preference/Preference;
.source "ValuePreference.java"


# instance fields
.field private mRightArrowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShowRightArrow:Z

.field private mValue:Ljava/lang/CharSequence;

.field private mValueRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lmiui/R$attr;->valuePreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getRightArrowDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiui/preference/ValuePreference;->mRightArrowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getValue()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lmiui/preference/ValuePreference;->mValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValueRes()I
    .registers 2

    iget v0, p0, Lmiui/preference/ValuePreference;->mValueRes:I

    return v0
.end method

.method public isShowRightArrow()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/preference/ValuePreference;->mShowRightArrow:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    sget v0, Lmiui/R$id;->value_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lmiui/preference/ValuePreference;->getValue()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_24

    :cond_21
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_24
    :goto_24
    sget v3, Lcom/miui/internal/R$id;->arrow_right:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_4a

    iget-boolean v4, p0, Lmiui/preference/ValuePreference;->mShowRightArrow:Z

    if-eqz v4, :cond_34

    move v4, v1

    goto :goto_35

    :cond_34
    move v4, v2

    :goto_35
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v4, p0, Lmiui/preference/ValuePreference;->mShowRightArrow:Z

    if-eqz v4, :cond_47

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lmiui/preference/ValuePreference;->mRightArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4a

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4a

    :cond_47
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public setRightArrowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-nez p1, :cond_6

    iget-object v0, p0, Lmiui/preference/ValuePreference;->mRightArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    :cond_6
    if-eqz p1, :cond_19

    iget-object v0, p0, Lmiui/preference/ValuePreference;->mRightArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_19

    :cond_c
    iput-object p1, p0, Lmiui/preference/ValuePreference;->mRightArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p0, v0}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    invoke-virtual {p0}, Lmiui/preference/ValuePreference;->notifyChanged()V

    :cond_19
    return-void
.end method

.method public setRightArrowRes(I)V
    .registers 3

    invoke-virtual {p0}, Lmiui/preference/ValuePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/preference/ValuePreference;->setRightArrowDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShowRightArrow(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/preference/ValuePreference;->mShowRightArrow:Z

    return-void
.end method

.method public setValue(I)V
    .registers 3

    invoke-virtual {p0}, Lmiui/preference/ValuePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iput p1, p0, Lmiui/preference/ValuePreference;->mValueRes:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/preference/ValuePreference;->mValue:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    iput v0, p0, Lmiui/preference/ValuePreference;->mValueRes:I

    iput-object p1, p0, Lmiui/preference/ValuePreference;->mValue:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lmiui/preference/ValuePreference;->notifyChanged()V

    :cond_10
    return-void
.end method
