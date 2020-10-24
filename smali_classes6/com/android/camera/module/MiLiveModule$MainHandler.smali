.class Lcom/android/camera/module/MiLiveModule$MainHandler;
.super Landroid/os/Handler;
.source ""


# instance fields
.field private mModule:Ljava/lang/ref/WeakReference;

.field final synthetic this$0:Lcom/android/camera/module/MiLiveModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/MiLiveModule;Landroid/os/Looper;Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/MiLiveModule;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x80

    const/4 v3, 0x2

    if-eq v1, v3, :cond_e

    const/4 v4, 0x4

    if-eq v1, v4, :cond_d

    const/16 v4, 0x9

    if-eq v1, v4, :cond_c

    const/16 v4, 0x11

    if-eq v1, v4, :cond_b

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_a

    const/16 v2, 0x23

    const/4 v3, 0x1

    if-eq v1, v2, :cond_7

    const/16 p1, 0x33

    if-eq v1, p1, :cond_6

    const/16 p1, 0x40

    if-eq v1, p1, :cond_4

    const/16 p1, 0x100

    if-eq v1, p1, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {p0}, Lcom/android/camera/module/MiLiveModule;->access$300(Lcom/android/camera/module/MiLiveModule;)V

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0x3a5

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz p0, :cond_f

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->silenceOuterAudio()V

    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->startBluetoothSco(I)V

    goto/16 :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    iput-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto/16 :goto_2

    :cond_7
    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    if-lez v0, :cond_8

    move v0, v3

    goto :goto_0

    :cond_8
    move v0, v1

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_9

    goto :goto_1

    :cond_9
    move v3, v1

    :goto_1
    invoke-static {p0, v0, v3}, Lcom/android/camera/module/MiLiveModule;->access$200(Lcom/android/camera/module/MiLiveModule;ZZ)V

    goto :goto_2

    :cond_a
    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {p0}, Lcom/android/camera/module/MiLiveModule;->access$100(Lcom/android/camera/module/MiLiveModule;)V

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_c
    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    goto :goto_2

    :cond_d
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {p1}, Lcom/android/camera/module/MiLiveModule;->access$000(Lcom/android/camera/module/MiLiveModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long p1, v0, v2

    if-gez p1, :cond_f

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_e
    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_f
    :goto_2
    return-void
.end method
