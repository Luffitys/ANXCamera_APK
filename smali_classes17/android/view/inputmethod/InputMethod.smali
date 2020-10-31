.class public interface abstract Landroid/view/inputmethod/InputMethod;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethod$SessionCallback;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.view.InputMethod"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.view.im"

.field public static final SHOW_EXPLICIT:I = 0x1

.field public static final SHOW_FORCED:I = 0x2

.field public static final TAG:Ljava/lang/String; = "InputMethod"


# virtual methods
.method public abstract attachToken(Landroid/os/IBinder;)V
.end method

.method public abstract bindInput(Landroid/view/inputmethod/InputBinding;)V
.end method

.method public abstract changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
.end method

.method public abstract createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V
.end method

.method public dispatchStartInputWithToken(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;ZLandroid/os/IBinder;Z)V
    .registers 6

    if-eqz p3, :cond_6

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputMethod;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_9

    :cond_6
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputMethod;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    :goto_9
    return-void
.end method

.method public abstract hideSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public abstract hideSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;)V
.end method

.method public initializeInternal(Landroid/os/IBinder;ILcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V
    .registers 4

    invoke-interface {p0, p2}, Landroid/view/inputmethod/InputMethod;->updateInputMethodDisplay(I)V

    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputMethod;->attachToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public onCreateInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .registers 6

    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    const-string v1, "InputMethod"

    const-string v2, "Failed to call onInlineSuggestionsUnsupported."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public abstract restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
.end method

.method public abstract revokeSession(Landroid/view/inputmethod/InputMethodSession;)V
.end method

.method public abstract setCurrentHideInputToken(Landroid/os/IBinder;)V
.end method

.method public abstract setCurrentShowInputToken(Landroid/os/IBinder;)V
.end method

.method public abstract setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V
.end method

.method public abstract showSoftInput(ILandroid/os/ResultReceiver;)V
.end method

.method public showSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;)V
    .registers 4

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method public abstract startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
.end method

.method public abstract unbindInput()V
.end method

.method public updateInputMethodDisplay(I)V
    .registers 2

    return-void
.end method
