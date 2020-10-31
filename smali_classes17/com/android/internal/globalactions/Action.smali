.class public interface abstract Lcom/android/internal/globalactions/Action;
.super Ljava/lang/Object;
.source "Action.java"


# virtual methods
.method public abstract create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public abstract getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract onPress()V
.end method

.method public abstract showBeforeProvisioning()Z
.end method

.method public abstract showDuringKeyguard()Z
.end method
