.class Lcom/android/camera/module/Camera2Module$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/Observer;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/Camera2Module;

.field final synthetic val$count:I

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/camera/module/Camera2Module;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    iput p2, p0, Lcom/android/camera/module/Camera2Module$12;->val$count:I

    iput p3, p0, Lcom/android/camera/module/Camera2Module$12;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic OooO00o()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideAlert()V

    return-void
.end method


# virtual methods
.method public synthetic OooO0O0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module$12;->OooO00o()V

    return-void
.end method

.method public onComplete()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/Camera2Module;->access$3502(Lcom/android/camera/module/Camera2Module;Z)Z

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->tryRemoveCountDownMessage()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xac

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v4, 0xd4

    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    iget v4, v4, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v4}, Lcom/android/camera/timerburst/TimerBurstController;->isSupportTimerBurst(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera/module/Camera2Module$12;->val$mode:I

    const/16 v5, 0x78

    if-eq v4, v5, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v3}, Lcom/android/camera/timerburst/TimerBurstController;->setInTimerBurstShotting(Z)V

    invoke-virtual {v4}, Lcom/android/camera/timerburst/TimerBurstController;->resetTimerRunningData()V

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    iget v0, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xa7

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xb5

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->access$3600(Lcom/android/camera/module/Camera2Module;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p0, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->reInitAlert(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/module/Camera2Module;->access$3502(Lcom/android/camera/module/Camera2Module;Z)Z

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a8

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    iget v1, p0, Lcom/android/camera/module/Camera2Module$12;->val$count:I

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideAlert()V

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showDelayNumber(I)V

    if-eqz v0, :cond_4

    :goto_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->startAutoHibernationCaptureDelayNumber()V

    goto :goto_2

    :cond_0
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideDelayNumber()V

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    iget p1, p1, Lcom/android/camera/module/BaseModule;->mIsSatFallback:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p1}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mWaitingSnapshot:Z

    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string p1, "capture check in startCount: sat fallback"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/camera/module/BaseModule;->mWaitingSnapshot:Z

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/camera/module/Camera2Module;->access$3400(Lcom/android/camera/module/Camera2Module;I)V

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 p1, 0xa7

    if-ne p0, p1, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->updateTimerBurstAnimator()V

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->stopAutoHibernationCaptureDelayNumber()V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showDelayNumber(I)V

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module$12;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 4

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    new-instance v0, Lcom/android/camera/module/OooOO0;

    invoke-direct {v0, p0}, Lcom/android/camera/module/OooOO0;-><init>(Lcom/android/camera/module/Camera2Module$12;)V

    const-wide/16 v1, 0x78

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$12;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 p1, 0x7

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    return-void
.end method
