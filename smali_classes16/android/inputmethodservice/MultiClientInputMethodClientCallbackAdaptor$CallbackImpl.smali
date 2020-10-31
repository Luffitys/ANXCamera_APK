.class final Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;
.super Ljava/lang/Object;
.source "MultiClientInputMethodClientCallbackAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackImpl"
.end annotation


# instance fields
.field private final mCallbackAdaptor:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;

.field private mFinished:Z

.field private final mOriginalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mFinished:Z

    iput-object p1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mCallbackAdaptor:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;

    iput-object p2, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mOriginalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;)Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mOriginalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    return-object v0
.end method


# virtual methods
.method appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-boolean v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mOriginalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    invoke-interface {v0, p1, p2}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 3

    iget-boolean v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mOriginalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    invoke-interface {v0, p1}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method finishSession()V
    .registers 4

    iget-boolean v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mFinished:Z

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mOriginalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    invoke-interface {v0}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;->onFinishSession()V

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mCallbackAdaptor:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;

    # getter for: Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->mSessionLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->access$200(Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_14
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mCallbackAdaptor:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mCallbackAdaptor:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;

    iget-object v1, v1, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->mReadChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mCallbackAdaptor:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;

    iget-object v1, v1, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->mReadChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mCallbackAdaptor:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;

    iput-object v2, v1, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->mReadChannel:Landroid/view/InputChannel;

    :cond_2a
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mCallbackAdaptor:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;

    iput-object v2, v1, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    monitor-exit v0

    return-void

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_30

    throw v1
.end method

.method hideSoftInput(ILandroid/os/ResultReceiver;)V
    .registers 4

    iget-boolean v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mOriginalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    invoke-interface {v0, p1, p2}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;->onHideSoftInput(ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method showSoftInput(ILandroid/os/ResultReceiver;)V
    .registers 4

    iget-boolean v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mOriginalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    invoke-interface {v0, p1, p2}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;->onShowSoftInput(ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method startInputOrWindowGainedFocus(Lcom/android/internal/os/SomeArgs;)V
    .registers 9

    :try_start_0
    iget-boolean v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mFinished:Z
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_22

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_8
    :try_start_8
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/view/InputConnectionWrapper;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mOriginalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    invoke-interface/range {v1 .. v6}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;->onStartInputOrWindowGainedFocus(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;III)V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    return-void

    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0
.end method

.method toggleSoftInput(II)V
    .registers 4

    iget-boolean v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mOriginalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    invoke-interface {v0, p1, p2}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;->onToggleSoftInput(II)V

    return-void
.end method

.method updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 3

    iget-boolean v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mOriginalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    invoke-interface {v0, p1}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;->onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    return-void
.end method

.method updateSelection(Lcom/android/internal/os/SomeArgs;)V
    .registers 10

    :try_start_0
    iget-boolean v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mFinished:Z
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_1e

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->mOriginalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi5:I

    iget v7, p1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-interface/range {v1 .. v7}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;->onUpdateSelection(IIIIII)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    return-void

    :catchall_1e
    move-exception v0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0
.end method
