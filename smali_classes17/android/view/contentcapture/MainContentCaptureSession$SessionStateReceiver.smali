.class Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "MainContentCaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/MainContentCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionStateReceiver"
.end annotation


# instance fields
.field private final mMainSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/contentcapture/MainContentCaptureSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/contentcapture/MainContentCaptureSession;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;->mMainSession:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic lambda$send$0(Landroid/view/contentcapture/MainContentCaptureSession;)V
    .registers 2

    const/16 v0, 0x104

    # invokes: Landroid/view/contentcapture/MainContentCaptureSession;->resetSession(I)V
    invoke-static {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->access$400(Landroid/view/contentcapture/MainContentCaptureSession;I)V

    return-void
.end method

.method static synthetic lambda$send$1(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/os/IBinder;)V
    .registers 3

    # invokes: Landroid/view/contentcapture/MainContentCaptureSession;->onSessionStarted(ILandroid/os/IBinder;)V
    invoke-static {p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession;->access$300(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;->mMainSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/MainContentCaptureSession;

    if-nez v0, :cond_15

    # getter for: Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/MainContentCaptureSession;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "received result after mina session released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    if-eqz p2, :cond_4c

    const-string v1, "enabled"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v2, 0x2

    if-ne p1, v2, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    # getter for: Landroid/view/contentcapture/MainContentCaptureSession;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->access$100(Landroid/view/contentcapture/MainContentCaptureSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_2d
    const-string v2, "binder"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_4b

    # getter for: Landroid/view/contentcapture/MainContentCaptureSession;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/contentcapture/MainContentCaptureSession;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No binder extra result"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->access$200(Landroid/view/contentcapture/MainContentCaptureSession;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$SessionStateReceiver$8hITRJtT52FGVzLySKUnda7QvUU;

    invoke-direct {v4, v0}, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$SessionStateReceiver$8hITRJtT52FGVzLySKUnda7QvUU;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4b
    goto :goto_4d

    :cond_4c
    const/4 v2, 0x0

    :goto_4d
    # getter for: Landroid/view/contentcapture/MainContentCaptureSession;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->access$200(Landroid/view/contentcapture/MainContentCaptureSession;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$SessionStateReceiver$1XAByNlZB50Bl0h_alx4PJFpMsU;

    invoke-direct {v3, v0, p1, v2}, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$SessionStateReceiver$1XAByNlZB50Bl0h_alx4PJFpMsU;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/os/IBinder;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
