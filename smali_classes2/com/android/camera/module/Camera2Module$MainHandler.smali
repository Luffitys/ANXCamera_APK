.class Lcom/android/camera/module/Camera2Module$MainHandler;
.super Landroid/os/Handler;
.source "Camera2Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/camera/module/Camera2Module$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

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

    if-eq v1, v4, :cond_e

    const/4 v5, 0x4

    if-eq v1, v5, :cond_d

    const/16 v6, 0x11

    if-eq v1, v6, :cond_c

    const/16 p0, 0x1f

    if-eq v1, p0, :cond_b

    const/16 p0, 0x21

    if-eq v1, p0, :cond_a

    const/16 p0, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, p0, :cond_7

    const/16 p0, 0x2c

    if-eq v1, p0, :cond_6

    const/16 p0, 0x2d

    if-eq v1, p0, :cond_5

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

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
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_f

    iget v0, p1, Landroid/os/Message;->arg2:I

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

    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/zxing/PreviewDecodeManager;->reset()V

    goto/16 :goto_2

    :pswitch_2
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p0, :cond_f

    invoke-interface {p0, v4}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFaceExists(I)Z

    move-result p0

    if-eqz p0, :cond_f

    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFocusViewVisible()Z

    move-result p0

    if-eqz p0, :cond_f

    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getFocusMode()I

    move-result p0

    if-ne v5, p0, :cond_f

    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 p1, 0x7

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/Camera2Module;->onShutterButtonClick(I)V

    goto/16 :goto_2

    :pswitch_4
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p0

    if-nez p0, :cond_f

    iput-boolean v4, v0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto/16 :goto_2

    :pswitch_5
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Oops, capture timeout later release timeout!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Lcom/android/camera/module/Camera2Module;->onPictureTakenFinished(Z)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p0

    if-nez p0, :cond_4

    return-void

    :cond_4
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$2700(Lcom/android/camera/module/Camera2Module;)V

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$000(Lcom/android/camera/module/Camera2Module;)Lio/reactivex/ObservableEmitter;

    move-result-object p0

    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    goto/16 :goto_2

    :pswitch_8
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p0

    if-nez p0, :cond_f

    iput-boolean v4, v0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto/16 :goto_2

    :pswitch_9
    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->setActivity(Lcom/android/camera/Camera;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->restartModule()V

    goto :goto_2

    :cond_7
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-lez p0, :cond_8

    move p0, v4

    goto :goto_1

    :cond_8
    move p0, v3

    :goto_1
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_9

    move v3, v4

    :cond_9
    invoke-static {v0, p0, v3}, Lcom/android/camera/module/Camera2Module;->access$3700(Lcom/android/camera/module/Camera2Module;ZZ)V

    goto :goto_2

    :cond_a
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p0, p1}, Lcom/android/camera/module/Camera2Module;->access$3500(Lcom/android/camera/module/Camera2Module;II)V

    goto :goto_2

    :cond_b
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$3600(Lcom/android/camera/module/Camera2Module;)V

    goto :goto_2

    :cond_c
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_d
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$3400(Lcom/android/camera/module/Camera2Module;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long p1, v1, v3

    if-gez p1, :cond_f

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_e
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/Window;->clearFlags(I)V

    :cond_f
    :goto_2
    :pswitch_a
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
