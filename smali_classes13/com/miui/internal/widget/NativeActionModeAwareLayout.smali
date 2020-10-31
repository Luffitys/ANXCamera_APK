.class public Lcom/miui/internal/widget/NativeActionModeAwareLayout;
.super Landroid/widget/LinearLayout;
.source "NativeActionModeAwareLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;
    }
.end annotation


# instance fields
.field private mActionModeForChildListener:Lcom/miui/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setActionModeForChildListener(Lcom/miui/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/NativeActionModeAwareLayout;->mActionModeForChildListener:Lcom/miui/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;

    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/NativeActionModeAwareLayout;->mActionModeForChildListener:Lcom/miui/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;

    if-eqz v0, :cond_8

    invoke-interface {v0, p2}, Lcom/miui/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;->onActionModeForChild(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p2

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
