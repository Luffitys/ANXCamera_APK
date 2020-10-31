.class public abstract Lcom/android/internal/globalactions/ToggleAction;
.super Ljava/lang/Object;
.source "ToggleAction.java"

# interfaces
.implements Lcom/android/internal/globalactions/Action;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/globalactions/ToggleAction$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ToggleAction"


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/internal/globalactions/ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    iput p1, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledIconResId:I

    iput p2, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledIconResid:I

    iput p3, p0, Lcom/android/internal/globalactions/ToggleAction;->mMessageResId:I

    iput p4, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledStatusMessageResId:I

    iput p5, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledStatusMessageResId:I

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .registers 3

    if-eqz p1, :cond_5

    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_7
    iput-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    return-void
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 13

    invoke-virtual {p0}, Lcom/android/internal/globalactions/ToggleAction;->willCreate()V

    const v0, 0x1090080

    const/4 v1, 0x0

    invoke-virtual {p4, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x10204bc

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/globalactions/ToggleAction;->isEnabled()Z

    move-result v5

    if-eqz v3, :cond_34

    iget v6, p0, Lcom/android/internal/globalactions/ToggleAction;->mMessageResId:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_34
    iget-object v6, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v7, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    if-eq v6, v7, :cond_43

    iget-object v6, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v7, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOn:Lcom/android/internal/globalactions/ToggleAction$State;

    if-ne v6, v7, :cond_41

    goto :goto_43

    :cond_41
    move v6, v1

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v6, 0x1

    :goto_44
    if-eqz v2, :cond_58

    nop

    if-eqz v6, :cond_4c

    iget v7, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledIconResId:I

    goto :goto_4e

    :cond_4c
    iget v7, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledIconResid:I

    :goto_4e
    invoke-virtual {p1, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_58
    if-eqz v4, :cond_6a

    if-eqz v6, :cond_5f

    iget v7, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledStatusMessageResId:I

    goto :goto_61

    :cond_5f
    iget v7, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledStatusMessageResId:I

    :goto_61
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_6a
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    return-object v0
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    iget v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final onPress()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "ToggleAction"

    const-string/jumbo v1, "shouldn\'t be able to toggle when in transition"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    if-eq v0, v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p0, v0}, Lcom/android/internal/globalactions/ToggleAction;->onToggle(Z)V

    invoke-virtual {p0, v0}, Lcom/android/internal/globalactions/ToggleAction;->changeStateFromPress(Z)V

    return-void
.end method

.method public abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    return-void
.end method

.method willCreate()V
    .registers 1

    return-void
.end method
