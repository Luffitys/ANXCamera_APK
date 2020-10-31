.class public interface abstract Landroid/view/InsetsAnimationControlCallbacks;
.super Ljava/lang/Object;
.source "InsetsAnimationControlCallbacks.java"


# virtual methods
.method public varargs abstract applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
.end method

.method public abstract notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
.end method

.method public abstract releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
.end method

.method public abstract reportPerceptible(IZ)V
.end method

.method public abstract scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
.end method

.method public abstract startAnimation(Landroid/view/InsetsAnimationControlImpl;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
.end method
