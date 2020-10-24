.class public abstract Lcom/xiaomi/camera/rx/SimpleDisposable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# instance fields
.field private final mDisposeCallbackHandler:Landroid/os/Handler;

.field private final unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/rx/SimpleDisposable;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/xiaomi/camera/rx/SimpleDisposable;->mDisposeCallbackHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic OooO00o()V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rx/SimpleDisposable;->onDispose()V

    return-void
.end method

.method private synthetic OooO0OO()V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rx/SimpleDisposable;->onDispose()V

    return-void
.end method


# virtual methods
.method public synthetic OooO0O0()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/rx/SimpleDisposable;->OooO00o()V

    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/rx/SimpleDisposable;->OooO0OO()V

    return-void
.end method

.method public final dispose()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/rx/SimpleDisposable;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/rx/SimpleDisposable;->mDisposeCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/xiaomi/camera/rx/OooO0OO;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/rx/OooO0OO;-><init>(Lcom/xiaomi/camera/rx/SimpleDisposable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/camera/rx/OooO0O0;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/rx/OooO0O0;-><init>(Lcom/xiaomi/camera/rx/SimpleDisposable;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rx/SimpleDisposable;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method protected abstract onDispose()V
.end method
