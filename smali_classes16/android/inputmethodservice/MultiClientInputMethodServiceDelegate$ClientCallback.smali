.class public interface abstract Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;
.super Ljava/lang/Object;
.source "MultiClientInputMethodServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClientCallback"
.end annotation


# virtual methods
.method public abstract onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
.end method

.method public abstract onFinishSession()V
.end method

.method public abstract onGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onHideSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyLongPress(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyMultiple(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onShowSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public abstract onStartInputOrWindowGainedFocus(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;III)V
.end method

.method public abstract onToggleSoftInput(II)V
.end method

.method public abstract onTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
.end method

.method public abstract onUpdateSelection(IIIIII)V
.end method
