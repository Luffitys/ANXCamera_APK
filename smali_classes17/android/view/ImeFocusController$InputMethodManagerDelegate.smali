.class public interface abstract Landroid/view/ImeFocusController$InputMethodManagerDelegate;
.super Ljava/lang/Object;
.source "ImeFocusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ImeFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputMethodManagerDelegate"
.end annotation


# virtual methods
.method public abstract closeCurrentIme()V
.end method

.method public abstract dispatchViewDetachedFromWindow(Landroid/view/View;)V
.end method

.method public abstract finishComposingText()V
.end method

.method public abstract finishInput()V
.end method

.method public abstract hasActiveConnection(Landroid/view/View;)Z
.end method

.method public abstract isCurrentRootView(Landroid/view/ViewRootImpl;)Z
.end method

.method public abstract isRestartOnNextWindowFocus(Z)Z
.end method

.method public abstract setCurrentRootView(Landroid/view/ViewRootImpl;)V
.end method

.method public abstract startInput(ILandroid/view/View;III)Z
.end method

.method public abstract startInputAsyncOnWindowFocusGain(Landroid/view/View;IIZ)V
.end method
