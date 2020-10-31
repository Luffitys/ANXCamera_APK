.class public interface abstract Landroid/view/InsetsController$Host;
.super Ljava/lang/Object;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Host"
.end annotation


# virtual methods
.method public abstract addOnPreDrawRunnable(Ljava/lang/Runnable;)V
.end method

.method public varargs abstract applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
.end method

.method public abstract dipToPx(I)I
.end method

.method public abstract dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
.end method

.method public abstract dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
.end method

.method public abstract dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation
.end method

.method public abstract dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
.end method

.method public abstract getRootViewTitle()Ljava/lang/String;
.end method

.method public abstract getSystemBarsAppearance()I
.end method

.method public abstract getSystemBarsBehavior()I
.end method

.method public abstract getWindowToken()Landroid/os/IBinder;
.end method

.method public abstract hasAnimationCallbacks()Z
.end method

.method public abstract notifyInsetsChanged()V
.end method

.method public abstract onInsetsModified(Landroid/view/InsetsState;)V
.end method

.method public abstract postInsetsAnimationCallback(Ljava/lang/Runnable;)V
.end method

.method public abstract releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
.end method

.method public abstract setSystemBarsAppearance(II)V
.end method

.method public abstract setSystemBarsBehavior(I)V
.end method

.method public abstract updateCompatSysUiVisibility(IZZ)V
.end method
