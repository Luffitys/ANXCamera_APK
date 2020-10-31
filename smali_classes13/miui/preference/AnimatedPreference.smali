.class public Lmiui/preference/AnimatedPreference;
.super Landroid/preference/CheckBoxPreference;
.source "AnimatedPreference.java"


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
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/preference/AnimatedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    sget v0, Lcom/miui/internal/R$layout;->preference_widget_animated:I

    invoke-virtual {p0, v0}, Lmiui/preference/AnimatedPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    sget v0, Lcom/miui/internal/R$layout;->preference_widget_animated:I

    invoke-virtual {p0, v0}, Lmiui/preference/AnimatedPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private updateAnimateState(IZ)V
    .registers 5

    if-eqz p2, :cond_8

    iget v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    or-int/2addr v0, p1

    iput v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    goto :goto_e

    :cond_8
    iget v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    :goto_e
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public isAnimateFinish()Z
    .registers 2

    iget v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isAnimateVisible()Z
    .registers 3

    iget v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isAnimating()Z
    .registers 2

    iget v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 7

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

    if-eqz v2, :cond_1a

    invoke-virtual {v0, v2}, Lmiui/widget/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1a
    iget-object v2, p0, Lmiui/preference/AnimatedPreference;->mAnimateFinishDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_21

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_21
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->isAnimateVisible()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_2c

    move v2, v3

    goto :goto_2d

    :cond_2c
    move v2, v4

    :goto_2d
    invoke-virtual {v0, v2}, Lmiui/widget/AnimatedImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->isAnimating()Z

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/widget/AnimatedImageView;->setAnimating(Z)V

    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->isAnimateFinish()Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_3f

    :cond_3e
    move v3, v4

    :goto_3f
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_54

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_57

    :cond_54
    const v3, 0x3e99999a    # 0.3f

    :goto_57
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setAnimateDrawable(I)V
    .registers 3

    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/preference/AnimatedPreference;->setAnimateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setAnimateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lmiui/preference/AnimatedPreference;->mAnimateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->notifyChanged()V

    return-void
.end method

.method public setAnimateFinish(Z)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lmiui/preference/AnimatedPreference;->updateAnimateState(IZ)V

    return-void
.end method

.method public setAnimateFinishDrawable(I)V
    .registers 3

    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/preference/AnimatedPreference;->setAnimateFinishDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setAnimateFinishDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lmiui/preference/AnimatedPreference;->mAnimateFinishDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->notifyChanged()V

    return-void
.end method

.method public setAnimateVisible(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lmiui/preference/AnimatedPreference;->updateAnimateState(IZ)V

    return-void
.end method

.method public setAnimating(Z)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lmiui/preference/AnimatedPreference;->updateAnimateState(IZ)V

    return-void
.end method
