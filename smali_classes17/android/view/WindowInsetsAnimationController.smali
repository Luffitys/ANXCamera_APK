.class public interface abstract Landroid/view/WindowInsetsAnimationController;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationController.java"


# virtual methods
.method public abstract finish(Z)V
.end method

.method public abstract getCurrentAlpha()F
.end method

.method public abstract getCurrentFraction()F
.end method

.method public abstract getCurrentInsets()Landroid/graphics/Insets;
.end method

.method public abstract getHiddenStateInsets()Landroid/graphics/Insets;
.end method

.method public abstract getShownStateInsets()Landroid/graphics/Insets;
.end method

.method public abstract getTypes()I
.end method

.method public abstract hasZeroInsetsIme()Z
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isFinished()Z
.end method

.method public isReady()Z
    .registers 2

    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public abstract setInsetsAndAlpha(Landroid/graphics/Insets;FF)V
.end method
