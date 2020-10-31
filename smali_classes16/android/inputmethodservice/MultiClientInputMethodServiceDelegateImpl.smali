.class final Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;
.super Ljava/lang/Object;
.source "MultiClientInputMethodServiceDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl$ServiceImpl;,
        Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl$InitializationPhase;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiClientInputMethodServiceDelegateImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInitializationPhase:I

.field private final mLock:Ljava/lang/Object;

.field private final mPrivOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;

.field private final mServiceCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mPrivOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;

    const/4 v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mInitializationPhase:I

    iput-object p1, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mServiceCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;)I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mInitializationPhase:I

    return v0
.end method

.method static synthetic access$102(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;I)I
    .registers 2

    iput p1, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mInitializationPhase:I

    return p1
.end method

.method static synthetic access$200(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;)Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mPrivOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;

    return-object v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;)Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mServiceCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;

    return-object v0
.end method


# virtual methods
.method acceptClient(ILandroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;Landroid/view/KeyEvent$DispatcherState;Landroid/os/Looper;)V
    .registers 12

    const-string v0, "MSIMS-session"

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    :try_start_c
    new-instance v3, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;

    invoke-direct {v3, p2, p4, p3, v2}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;-><init>(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;Landroid/os/Looper;Landroid/view/KeyEvent$DispatcherState;Landroid/view/InputChannel;)V

    iget-object v4, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mPrivOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;

    invoke-virtual {v3}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->createIInputMethodSession()Lcom/android/internal/view/IInputMethodSession$Stub;

    move-result-object v5

    invoke-virtual {v3}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;->createIMultiClientInputMethodSession()Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->acceptClient(ILcom/android/internal/view/IInputMethodSession;Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;Landroid/view/InputChannel;)V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_23

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    nop

    return-void

    :catchall_23
    move-exception v3

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    throw v3
.end method

.method createInputMethodWindowToken(I)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mPrivOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->createInputMethodWindowToken(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method isUidAllowedOnDisplay(II)Z
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mPrivOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->isUidAllowedOnDisplay(II)Z

    move-result v0

    return v0
.end method

.method onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mInitializationPhase:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_24

    const-string v1, "MultiClientInputMethodServiceDelegateImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mInitializationPhase:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_24
    const/4 v1, 0x2

    iput v1, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mInitializationPhase:I

    new-instance v1, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl$ServiceImpl;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl$ServiceImpl;-><init>(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;)V

    monitor-exit v0

    return-object v1

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method onDestroy()V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mInitializationPhase:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_25

    const/4 v2, 0x4

    if-eq v1, v2, :cond_25

    const-string v1, "MultiClientInputMethodServiceDelegateImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mInitializationPhase:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_25
    const/4 v1, 0x5

    iput v1, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mInitializationPhase:I

    nop

    :goto_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method onUnbind(Landroid/content/Intent;)Z
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mInitializationPhase:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_25

    const/4 v2, 0x3

    if-eq v1, v2, :cond_25

    const-string v1, "MultiClientInputMethodServiceDelegateImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mInitializationPhase:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_25
    const/4 v1, 0x4

    iput v1, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mInitializationPhase:I

    iget-object v1, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mPrivOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->dispose()V

    nop

    :goto_2e
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method reportImeWindowTarget(IILandroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mPrivOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->reportImeWindowTarget(IILandroid/os/IBinder;)V

    return-void
.end method

.method setActive(IZ)V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mPrivOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->setActive(IZ)V

    return-void
.end method
