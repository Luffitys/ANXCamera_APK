.class public Landroid/view/ScrollCaptureClient$DelayedAction;
.super Ljava/lang/Object;
.source "ScrollCaptureClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScrollCaptureClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelayedAction"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/Runnable;

.field private final mCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mHandler:Landroid/os/Handler;

.field private final mToken:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Handler;JLjava/lang/Runnable;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureClient$DelayedAction;->mCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureClient$DelayedAction;->mToken:Ljava/lang/Object;

    iput-object p1, p0, Landroid/view/ScrollCaptureClient$DelayedAction;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroid/view/ScrollCaptureClient$DelayedAction;->mAction:Ljava/lang/Runnable;

    new-instance v0, Landroid/view/-$$Lambda$ScrollCaptureClient$DelayedAction$dG-6ZyjvsGGEg-j2UjRHC5kFNv8;

    invoke-direct {v0, p0}, Landroid/view/-$$Lambda$ScrollCaptureClient$DelayedAction$dG-6ZyjvsGGEg-j2UjRHC5kFNv8;-><init>(Landroid/view/ScrollCaptureClient$DelayedAction;)V

    iget-object v1, p0, Landroid/view/ScrollCaptureClient$DelayedAction;->mToken:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public static synthetic lambda$dG-6ZyjvsGGEg-j2UjRHC5kFNv8(Landroid/view/ScrollCaptureClient$DelayedAction;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient$DelayedAction;->onTimeout()Z

    move-result p0

    return p0
.end method

.method private onTimeout()Z
    .registers 4

    iget-object v0, p0, Landroid/view/ScrollCaptureClient$DelayedAction;->mCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/ScrollCaptureClient$DelayedAction;->mAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return v2

    :cond_10
    return v1
.end method


# virtual methods
.method public cancel()Z
    .registers 4

    iget-object v0, p0, Landroid/view/ScrollCaptureClient$DelayedAction;->mCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    :cond_b
    iget-object v0, p0, Landroid/view/ScrollCaptureClient$DelayedAction;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/ScrollCaptureClient$DelayedAction;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return v2
.end method

.method public timeoutNow()Z
    .registers 2

    invoke-direct {p0}, Landroid/view/ScrollCaptureClient$DelayedAction;->onTimeout()Z

    move-result v0

    return v0
.end method
