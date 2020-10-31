.class final Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$ImeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "MultiClientInputMethodClientCallbackAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImeInputEventReceiver"
.end annotation


# instance fields
.field private final mCancellationGroupOnFinishSession:Lcom/android/internal/inputmethod/CancellationGroup;

.field private final mClientCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

.field private final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field private final mKeyEventCallbackAdaptor:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$KeyEventCallbackAdaptor;


# direct methods
.method constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/inputmethod/CancellationGroup;Landroid/view/KeyEvent$DispatcherState;Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object p3, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$ImeInputEventReceiver;->mCancellationGroupOnFinishSession:Lcom/android/internal/inputmethod/CancellationGroup;

    iput-object p4, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$ImeInputEventReceiver;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    iput-object p5, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$ImeInputEventReceiver;->mClientCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    new-instance v0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$KeyEventCallbackAdaptor;

    invoke-direct {v0, p5}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$KeyEventCallbackAdaptor;-><init>(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;)V

    iput-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$ImeInputEventReceiver;->mKeyEventCallbackAdaptor:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$KeyEventCallbackAdaptor;

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 7

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$ImeInputEventReceiver;->mCancellationGroupOnFinishSession:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$ImeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_d
    const/4 v0, 0x0

    :try_start_e
    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_21

    move-object v1, p1

    check-cast v1, Landroid/view/KeyEvent;

    iget-object v2, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$ImeInputEventReceiver;->mKeyEventCallbackAdaptor:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$KeyEventCallbackAdaptor;

    iget-object v3, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$ImeInputEventReceiver;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    iget-object v4, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$ImeInputEventReceiver;->mKeyEventCallbackAdaptor:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$KeyEventCallbackAdaptor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_3a

    :cond_21
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$ImeInputEventReceiver;->mClientCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    invoke-interface {v2, v1}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    goto :goto_3a

    :cond_33
    iget-object v2, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$ImeInputEventReceiver;->mClientCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    invoke-interface {v2, v1}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_3f

    move v0, v2

    :goto_3a
    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$ImeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    nop

    return-void

    :catchall_3f
    move-exception v1

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$ImeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
