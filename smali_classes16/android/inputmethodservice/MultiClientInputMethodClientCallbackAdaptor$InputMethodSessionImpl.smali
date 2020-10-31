.class final Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;
.super Lcom/android/internal/view/IInputMethodSession$Stub;
.source "MultiClientInputMethodClientCallbackAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodSessionImpl"
.end annotation


# instance fields
.field private mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

.field private final mCancellationGroupOnFinishSession:Lcom/android/internal/inputmethod/CancellationGroup;

.field private mHandler:Landroid/os/Handler;

.field private final mSessionLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;Landroid/os/Handler;Lcom/android/internal/inputmethod/CancellationGroup;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodSession$Stub;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mSessionLock:Ljava/lang/Object;

    iput-object p2, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    iput-object p3, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCancellationGroupOnFinishSession:Lcom/android/internal/inputmethod/CancellationGroup;

    return-void
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_c

    goto :goto_1b

    :cond_c
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    sget-object v2, Landroid/inputmethodservice/-$$Lambda$nzQNVb4Z0e33hB95nNP1BM-A3r4;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$nzQNVb4Z0e33hB95nNP1BM-A3r4;

    iget-object v3, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    invoke-static {v2, v3, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v0

    return-void

    :cond_1b
    :goto_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_c

    goto :goto_1b

    :cond_c
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    sget-object v2, Landroid/inputmethodservice/-$$Lambda$RawqPImrGiEy8dXqjapbiFcFS9w;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$RawqPImrGiEy8dXqjapbiFcFS9w;

    iget-object v3, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    invoke-static {v2, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v0

    return-void

    :cond_1b
    :goto_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public finishSession()V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_c

    goto :goto_25

    :cond_c
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCancellationGroupOnFinishSession:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/CancellationGroup;->cancelAll()V

    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    sget-object v2, Landroid/inputmethodservice/-$$Lambda$50K3nJOOPDYkhKRI6jLQ5NjnbLU;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$50K3nJOOPDYkhKRI6jLQ5NjnbLU;

    iget-object v3, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    invoke-static {v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    iput-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    monitor-exit v0

    return-void

    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public final notifyImeHidden()V
    .registers 1

    # invokes: Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->reportNotSupported()V
    invoke-static {}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->access$100()V

    return-void
.end method

.method public removeImeSurface()V
    .registers 1

    # invokes: Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->reportNotSupported()V
    invoke-static {}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->access$100()V

    return-void
.end method

.method public toggleSoftInput(II)V
    .registers 9

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_c

    goto :goto_23

    :cond_c
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    sget-object v2, Landroid/inputmethodservice/-$$Lambda$GapYa6Lyify6RwP-rgkklzmDV8I;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$GapYa6Lyify6RwP-rgkklzmDV8I;

    iget-object v3, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v0

    return-void

    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public updateCursor(Landroid/graphics/Rect;)V
    .registers 2

    # invokes: Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->reportNotSupported()V
    invoke-static {}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->access$100()V

    return-void
.end method

.method public updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_c

    goto :goto_1b

    :cond_c
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    sget-object v2, Landroid/inputmethodservice/-$$Lambda$BAvs3tw1MzE4gOJqYOA5MCJasPE;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$BAvs3tw1MzE4gOJqYOA5MCJasPE;

    iget-object v3, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    invoke-static {v2, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v0

    return-void

    :cond_1b
    :goto_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .registers 3

    # invokes: Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->reportNotSupported()V
    invoke-static {}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->access$100()V

    return-void
.end method

.method public updateSelection(IIIIII)V
    .registers 12

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_c

    goto :goto_2c

    :cond_c
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput p4, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    iput p5, v1, Lcom/android/internal/os/SomeArgs;->argi5:I

    iput p6, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    iget-object v2, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    sget-object v3, Landroid/inputmethodservice/-$$Lambda$zVy_pAXuQfncxA_AL_8DWyVpYXc;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$zVy_pAXuQfncxA_AL_8DWyVpYXc;

    iget-object v4, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$InputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    invoke-static {v3, v4, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    nop

    monitor-exit v0

    return-void

    :cond_2c
    :goto_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public viewClicked(Z)V
    .registers 2

    # invokes: Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->reportNotSupported()V
    invoke-static {}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->access$100()V

    return-void
.end method
