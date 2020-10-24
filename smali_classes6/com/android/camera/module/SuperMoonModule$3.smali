.class Lcom/android/camera/module/SuperMoonModule$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/Observer;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/SuperMoonModule;

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lcom/android/camera/module/SuperMoonModule;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/SuperMoonModule$3;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iput p2, p0, Lcom/android/camera/module/SuperMoonModule$3;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic OooO00o(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideAlert()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$3;->this$0:Lcom/android/camera/module/SuperMoonModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/SuperMoonModule;->access$1202(Lcom/android/camera/module/SuperMoonModule;Z)Z

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$3;->this$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-virtual {v0}, Lcom/android/camera/module/SuperMoonModule;->tryRemoveCountDownMessage()V

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$3;->this$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$3;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$3;->this$0:Lcom/android/camera/module/SuperMoonModule;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonFocus(ZI)V

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$3;->this$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/module/SuperMoonModule;->access$1300(Lcom/android/camera/module/SuperMoonModule;I)V

    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule$3;->this$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonFocus(ZI)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_0

    invoke-interface {p0, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->reInitAlert(Z)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule$3;->this$0:Lcom/android/camera/module/SuperMoonModule;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/module/SuperMoonModule;->access$1202(Lcom/android/camera/module/SuperMoonModule;Z)Z

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/SuperMoonModule$3;->val$time:I

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/SuperMoonModule$3;->this$0:Lcom/android/camera/module/SuperMoonModule;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule$3;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showDelayNumber(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/SuperMoonModule$3;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$3;->this$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-static {v0, p1}, Lcom/android/camera/module/SuperMoonModule;->access$1102(Lcom/android/camera/module/SuperMoonModule;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    iget-object p1, p0, Lcom/android/camera/module/SuperMoonModule$3;->this$0:Lcom/android/camera/module/SuperMoonModule;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xac

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/o0000oo;

    invoke-direct {v2, p1}, Lcom/android/camera/module/o0000oo;-><init>(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    const-wide/16 v3, 0x78

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/SuperMoonModule$3;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    iget-object p1, p0, Lcom/android/camera/module/SuperMoonModule$3;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iget p0, p0, Lcom/android/camera/module/SuperMoonModule$3;->val$time:I

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showDelayNumber(I)V

    return-void
.end method
