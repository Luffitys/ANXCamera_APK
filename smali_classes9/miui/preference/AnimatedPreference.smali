.class public Lmiui/preference/AnimatedPreference;
.super Landroid/preference/CheckBoxPreference;
.source ""


# static fields
.field private static final STATE_ANIMATE_FINISH:I = 0x4

.field private static final STATE_ANIMATE_INVISIBLE:I = 0x0

.field private static final STATE_ANIMATE_VISIBLE:I = 0x1

.field private static final STATE_ANIMATING:I = 0x2


# instance fields
.field private mAnimateDrawable:Landroid/graphics/drawable/Drawable;

.field private mAnimateFinishDrawable:Landroid/graphics/drawable/Drawable;

.field private mAnimateState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/preference/AnimatedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    sget p1, Lcom/miui/internal/R$layout;->preference_widget_animated:I

    invoke-virtual {p0, p1}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    sget p1, Lcom/miui/internal/R$layout;->preference_widget_animated:I

    invoke-virtual {p0, p1}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private updateAnimateState(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public isAnimateFinish()Z
    .locals 0

    iget p0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAnimateVisible()Z
    .locals 1

    iget p0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimating()Z
    .locals 0

    iget p0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    sget v0, Lcom/miui/internal/R$id;->animate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/AnimatedImageView;

    sget v1, Lcom/miui/internal/R$id;->animate_finish:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lmiui/preference/AnimatedPreference;->mAnimateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lmiui/widget/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lmiui/preference/AnimatedPreference;->mAnimateFinishDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->isAnimateVisible()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->isAnimating()Z

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/widget/AnimatedImageView;->setAnimating(Z)V

    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->isAnimateFinish()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const p0, 0x3e99999a    # 0.3f

    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setAnimateDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/preference/AnimatedPreference;->setAnimateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setAnimateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lmiui/preference/AnimatedPreference;->mAnimateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->notifyChanged()V

    return-void
.end method

.method public setAnimateFinish(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lmiui/preference/AnimatedPreference;->updateAnimateState(IZ)V

    return-void
.end method

.method public setAnimateFinishDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/preference/AnimatedPreference;->setAnimateFinishDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setAnimateFinishDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lmiui/preference/AnimatedPreference;->mAnimateFinishDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->notifyChanged()V

    return-void
.end method

.method public setAnimateVisible(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lmiui/preference/AnimatedPreference;->updateAnimateState(IZ)V

    return-void
.end method

.method public setAnimating(Z)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lmiui/preference/AnimatedPreference;->updateAnimateState(IZ)V

    return-void
.end method
