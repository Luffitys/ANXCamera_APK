.class Lcom/android/camera/module/SuperMoonModule$MainHandler;
.super Landroid/os/Handler;
.source ""


# instance fields
.field private mModule:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/SuperMoonModule;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/camera/module/SuperMoonModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/SuperMoonModule;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x80

    const/4 v4, 0x2

    if-eq v1, v4, :cond_a

    const/4 v5, 0x4

    if-eq v1, v5, :cond_9

    const/16 v6, 0x11

    if-eq v1, v6, :cond_8

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_7

    const/16 v3, 0x21

    if-eq v1, v3, :cond_6

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_5

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_4

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no consumer for this message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {v0}, Lcom/android/camera/module/SuperMoonModule;->onWaitingFocusFinished()Z

    goto/16 :goto_1

    :pswitch_1
    invoke-static {}, Lcom/android/camera/module/SuperMoonModule;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "wait save finish timeout"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v3}, Lcom/android/camera/module/SuperMoonModule;->access$402(Lcom/android/camera/module/SuperMoonModule;Z)Z

    goto/16 :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/camera/module/SuperMoonModule;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v1, "fallback timeout"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, v0, Lcom/android/camera/module/BaseModule;->mIsSatFallback:I

    iput-boolean v3, v0, Lcom/android/camera/module/BaseModule;->mFallbackProcessed:Z

    const/4 p1, -0x1

    iput p1, v0, Lcom/android/camera/module/BaseModule;->mLastSatFallbackRequestId:I

    iget-boolean p1, v0, Lcom/android/camera/module/BaseModule;->mWaitingSnapshot:Z

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result p1

    if-ne p1, v2, :cond_b

    iput-boolean v3, v0, Lcom/android/camera/module/BaseModule;->mWaitingSnapshot:Z

    const/16 p1, 0x3e

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :pswitch_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xa4

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_b

    iget v0, v0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-ltz v0, :cond_3

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    :cond_3
    rem-int/lit16 v0, v0, 0x168

    add-int/lit16 v0, v0, 0x168

    :goto_0
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configRotationChange(II)V

    goto/16 :goto_1

    :pswitch_4
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/zxing/PreviewDecodeManager;->reset()V

    goto/16 :goto_1

    :pswitch_5
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p0, :cond_b

    invoke-interface {p0, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFaceExists(I)Z

    move-result p0

    if-eqz p0, :cond_b

    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFocusViewVisible()Z

    move-result p0

    if-eqz p0, :cond_b

    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getFocusMode()I

    move-result p0

    if-ne v5, p0, :cond_b

    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 p1, 0x7

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonClick(I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-static {}, Lcom/android/camera/module/SuperMoonModule;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Oops, capture timeout later release timeout!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Lcom/android/camera/module/SuperMoonModule;->onPictureTakenFinished(Z)V

    goto :goto_1

    :pswitch_8
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p0

    if-nez p0, :cond_b

    iput-boolean v2, v0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto :goto_1

    :pswitch_9
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->setActivity(Lcom/android/camera/Camera;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->restartModule()V

    goto :goto_1

    :cond_6
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p0, p1}, Lcom/android/camera/module/SuperMoonModule;->access$100(Lcom/android/camera/module/SuperMoonModule;II)V

    goto :goto_1

    :cond_7
    invoke-static {v0}, Lcom/android/camera/module/SuperMoonModule;->access$200(Lcom/android/camera/module/SuperMoonModule;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/android/camera/module/SuperMoonModule;->access$000(Lcom/android/camera/module/SuperMoonModule;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long p1, v1, v3

    if-gez p1, :cond_b

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_a
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/Window;->clearFlags(I)V

    :cond_b
    :goto_1
    :pswitch_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_7
        :pswitch_8
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
