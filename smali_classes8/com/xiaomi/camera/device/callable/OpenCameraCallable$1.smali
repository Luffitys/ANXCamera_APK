.class Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source ""


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method private synthetic OooO(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$300(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onOpened(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic OooO00o(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$300(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onClosed(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic OooO0OO(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$300(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic OooO0o0(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$300(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onError(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic OooO0oO(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$300(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object p0

    const/16 v0, 0xe7

    invoke-interface {p0, p1, v0}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onError(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO0O0(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->OooO00o(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO0Oo(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->OooO0OO(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO0o(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->OooO0o0(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic OooO0oo(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->OooO0oO(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooOO0(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->OooO(Ljava/lang/String;)V

    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClosed: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    move-result-object v1

    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {p1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClosed: cache removed: cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v1, Lcom/xiaomi/camera/device/callable/OooO0OO;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/camera/device/callable/OooO0OO;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    move-result-object v1

    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object p1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->onCameraDisconnected()V

    iget-object p1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/camera2/Camera2Proxy;->releasePreview(I)V

    iget-object p1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->resetConfigs()V

    iget-object p1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->close()Z

    move-result p1

    iput-boolean p1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsClosing:Z

    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    const/4 p1, 0x0

    iput-object p1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {p1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected: cache removed: cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v1, Lcom/xiaomi/camera/device/callable/OooO0o;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/camera/device/callable/OooO0o;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 4
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    move-result-object v1

    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {p1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError: cache removed: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {p1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$000(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 v2, 0xa

    if-le p1, v2, :cond_1

    invoke-static {}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v2, "onError: post onError to listener"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v2, Lcom/xiaomi/camera/device/callable/OooO0Oo;

    invoke-direct {v2, p0, v0, p2}, Lcom/xiaomi/camera/device/callable/OooO0Oo;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Ljava/lang/String;I)V

    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/device/callable/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onError: openCamera error, but we are retrying"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 10
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpened: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    iget-object v4, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {v4}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$000(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    :cond_0
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {p1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but camera capabilities is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v1, Lcom/xiaomi/camera/device/callable/OooO0o0;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/camera/device/callable/OooO0o0;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-eq v2, p1, :cond_2

    iget-object v2, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v2}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpened: already cached: cid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->setCurrentOpenedCameraId(I)V

    new-instance v2, Lcom/android/camera2/MiCamera2;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v7, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v3, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {v3}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$200(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mStreamingHandler:Landroid/os/Handler;

    move-object v4, v2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/camera2/MiCamera2;-><init>(ILandroid/hardware/camera2/CameraDevice;Lcom/android/camera2/CameraCapabilities;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v1, Lcom/xiaomi/camera/device/callable/OooO0O0;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/camera/device/callable/OooO0O0;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Ljava/lang/String;)V

    goto :goto_0
.end method
