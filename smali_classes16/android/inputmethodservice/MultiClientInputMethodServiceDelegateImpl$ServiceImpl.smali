.class final Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl$ServiceImpl;
.super Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub;
.source "MultiClientInputMethodServiceDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceImpl"
.end annotation


# instance fields
.field private final mImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl$ServiceImpl;->mImpl:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public addClient(IIII)V
    .registers 7

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl$ServiceImpl;->mImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;

    if-nez v0, :cond_b

    return-void

    :cond_b
    # getter for: Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mServiceCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;
    invoke-static {v0}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->access$300(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;)Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;->addClient(IIII)V

    return-void
.end method

.method public initialize(Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;)V
    .registers 7

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl$ServiceImpl;->mImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;

    if-nez v0, :cond_b

    return-void

    :cond_b
    # getter for: Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->access$000(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    # getter for: Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mInitializationPhase:I
    invoke-static {v0}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->access$100(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_33

    const-string v2, "MultiClientInputMethodServiceDelegateImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mInitializationPhase:I
    invoke-static {v0}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->access$100(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :cond_33
    # getter for: Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mPrivOps:Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;
    invoke-static {v0}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->access$200(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;)Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/inputmethod/MultiClientInputMethodPrivilegedOperations;->set(Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;)V

    const/4 v2, 0x3

    # setter for: Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mInitializationPhase:I
    invoke-static {v0, v2}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->access$102(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;I)I

    # getter for: Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mServiceCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;
    invoke-static {v0}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->access$300(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;)Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;->initialized()V

    nop

    :goto_46
    monitor-exit v1

    return-void

    :catchall_48
    move-exception v2

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_10 .. :try_end_4a} :catchall_48

    throw v2
.end method

.method public removeClient(I)V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl$ServiceImpl;->mImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;

    if-nez v0, :cond_b

    return-void

    :cond_b
    # getter for: Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->mServiceCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;
    invoke-static {v0}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->access$300(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;)Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;->removeClient(I)V

    return-void
.end method
