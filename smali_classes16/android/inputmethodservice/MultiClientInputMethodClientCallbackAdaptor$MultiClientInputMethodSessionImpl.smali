.class final Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;
.super Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub;
.source "MultiClientInputMethodClientCallbackAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultiClientInputMethodSessionImpl"
.end annotation


# instance fields
.field private mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

.field private final mCancellationGroupOnFinishSession:Lcom/android/internal/inputmethod/CancellationGroup;

.field private mHandler:Landroid/os/Handler;

.field private final mSessionLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;Landroid/os/Handler;Lcom/android/internal/inputmethod/CancellationGroup;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mSessionLock:Ljava/lang/Object;

    iput-object p2, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    iput-object p3, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mCancellationGroupOnFinishSession:Lcom/android/internal/inputmethod/CancellationGroup;

    return-void
.end method


# virtual methods
.method public hideSoftInput(ILandroid/os/ResultReceiver;)V
    .registers 8

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_c

    goto :goto_1f

    :cond_c
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    sget-object v2, Landroid/inputmethodservice/-$$Lambda$0tnQSRQlZ73hLobz1ZfjUIoiCl0;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$0tnQSRQlZ73hLobz1ZfjUIoiCl0;

    iget-object v3, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v0

    return-void

    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .registers 8

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_c

    goto :goto_1f

    :cond_c
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    sget-object v2, Landroid/inputmethodservice/-$$Lambda$m1uOlwS-mRsg9KSUY6vV9l9ksWc;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$m1uOlwS-mRsg9KSUY6vV9l9ksWc;

    iget-object v3, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v0

    return-void

    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public startInputOrWindowGainedFocus(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;III)V
    .registers 13

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_c

    goto :goto_3a

    :cond_c
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    if-nez p1, :cond_19

    goto :goto_20

    :cond_19
    new-instance v3, Lcom/android/internal/view/InputConnectionWrapper;

    iget-object v4, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mCancellationGroupOnFinishSession:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v3, v2, p1, p2, v4}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/view/IInputContext;ILcom/android/internal/inputmethod/CancellationGroup;)V

    :goto_20
    iput-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput p4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p5, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p6, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v3, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mHandler:Landroid/os/Handler;

    sget-object v4, Landroid/inputmethodservice/-$$Lambda$Xt9K6cDxkSefTfR7zi9ni-dRFZ8;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$Xt9K6cDxkSefTfR7zi9ni-dRFZ8;

    iget-object v5, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$MultiClientInputMethodSessionImpl;->mCallbackImpl:Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    invoke-static {v4, v5, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    nop

    monitor-exit v0

    return-void

    :cond_3a
    :goto_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method
