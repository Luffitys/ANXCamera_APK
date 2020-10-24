.class public Lcom/android/camera/module/TimeFreezeModule;
.super Lcom/android/camera/module/CloneModule;
.source ""


# static fields
.field private static final DURATION_VIDEO_RECORDING:I = 0x2710

.field private static final MAX_VIDEO_SUBJECT_COUNT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimeFreezeModule"


# instance fields
.field private mInFreezing:Z

.field private mInPausing:Z

.field private mInPlaying:Z

.field private mInRecording:Z

.field private mInSaving:Z

.field private mTimeFreezeCountDownTimer:Landroid/os/CountDownTimer;

.field private mTranslateY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CloneModule;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInPlaying:Z

    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInRecording:Z

    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInPausing:Z

    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInSaving:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/TimeFreezeModule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInRecording:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/module/TimeFreezeModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->resetTipHint()V

    return-void
.end method

.method private cancelTimeFreezeCountDown()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mTimeFreezeCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const-string v0, "TimeFreezeModule"

    const-string v1, "cancelTimeFreezeCountDown"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mTimeFreezeCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mTimeFreezeCountDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInRecording:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->resetTipHint()V

    :cond_1
    return-void
.end method

.method private resetTipHint()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x1a2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->getStatus()Lcom/android/camera/fragment/clone/Status;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/clone/Status;->CAPTURING:Lcom/android/camera/fragment/clone/Status;

    if-eq v0, v1, :cond_0

    const-string p0, "TimeFreezeModule"

    const-string v0, "onPictureTakenImageConsumed not capturing"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->updateCaptureMessage(IZ)V

    :cond_1
    return-void
.end method

.method private startTimeFreezeCountDown()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mTimeFreezeCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/module/TimeFreezeModule$1;

    const-wide/16 v3, 0x154a

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/module/TimeFreezeModule$1;-><init>(Lcom/android/camera/module/TimeFreezeModule;JJ)V

    iput-object v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mTimeFreezeCountDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mTimeFreezeCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mTimeFreezeCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public dispatchConfigChange(I)Z
    .locals 1

    const/16 p0, 0xfb

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimeFreezeFilmRatioEnabled()Z

    move-result p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    xor-int/lit8 v0, p0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/extra/DataItemLive;->setTimeFreezeFilmRatioEnabled(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x1a2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz p1, :cond_0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->onFilmRatioChanged(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public doCancel()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->doCancel()V

    return-void
.end method

.method public fillFeatureControl(Lcom/android/camera/module/loader/StartControl;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/StartControl;->getFeatureDetail()Lcom/android/camera/module/loader/StartControlFeatureDetail;

    move-result-object p0

    const p1, 0x7f090169

    const v0, 0xfffff9

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/loader/StartControlFeatureDetail;->addFragmentInfo(II)V

    const p1, 0x7f090077

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/StartControlFeatureDetail;->hideFragment(I)V

    const p1, 0x7f090083

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/StartControlFeatureDetail;->hideFragment(I)V

    const p1, 0x7f090081

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/StartControlFeatureDetail;->hideFragment(I)V

    return-void
.end method

.method protected getDurationVideoRecording()I
    .locals 0

    const/16 p0, 0x2710

    return p0
.end method

.method protected getMaxVideoSubjectCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected initCloneMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->start()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/module/CloneModule;->mPendingStart:Z

    :cond_0
    return-void
.end method

.method protected isVideoMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onCloneMessage(Lcom/xiaomi/fenshen/FenShenCam$Mode;Lcom/xiaomi/fenshen/FenShenCam$Message;Lcom/android/camera/protocol/ModeProtocol$CloneProcess;I)Z
    .locals 4

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_TOO_LARGE_OR_FAILED:Lcom/xiaomi/fenshen/FenShenCam$Message;

    const-string v1, "TimeFreezeModule"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p1, v0, :cond_2

    const-string p1, "too much movement, stop capture"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f100208

    invoke-interface {p3, p1, v2}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->updateCaptureMessage(IZ)V

    iget-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mInRecording:Z

    if-eqz p1, :cond_0

    invoke-interface {p3, v3}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->stopCaptureToPreviewResult(Z)V

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInFreezing:Z

    if-eqz p0, :cond_1

    invoke-interface {p3}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->onCountDownFinished()V

    :cond_1
    return v2

    :cond_2
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-eq p2, p1, :cond_5

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->START:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-eq p2, p1, :cond_4

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_6

    :cond_4
    invoke-interface {p3, v3}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->setDetectedPersonInPreview(Z)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-interface {p3, v2}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->setDetectedPersonInPreview(Z)V

    :cond_6
    :goto_1
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_TOO_LARGE_OR_FAILED:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_7

    move v2, v3

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCaptureMessage "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mInRecording:Z

    if-eqz p1, :cond_9

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-eq p2, p1, :cond_8

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_9

    :cond_8
    return v3

    :cond_9
    iget-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mInFreezing:Z

    if-nez p1, :cond_b

    iget-boolean p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInPlaying:Z

    if-eqz p0, :cond_a

    goto :goto_2

    :cond_a
    invoke-interface {p3, p4, v2}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->updateCaptureMessage(IZ)V

    :cond_b
    :goto_2
    return v3
.end method

.method protected onCreate(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mInFreezing:Z

    return-void
.end method

.method public onHostStopAndNotifyActionStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->onHostStopAndNotifyActionStop()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHostStopAndNotifyActionStop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/CloneModule;->mIsFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeFreezeModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInRecording:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CloneModule;->stopVideoRecording(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/TimeFreezeModule;->resumePreviewIfNeeded()V

    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->doLaterReleaseIfNeed()V

    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/module/CloneModule;->onPreviewLayoutChanged(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getTranslateY()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mTranslateY:I

    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 3

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/camera/fragment/clone/Config;->setCloneMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->quit()V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    :cond_1
    return-void
.end method

.method protected onShutterButtonClick(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 4

    iget-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mInSaving:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mInRecording:Z

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    new-array v2, v1, [I

    const/16 v3, 0xfb

    aput v3, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/module/TimeFreezeModule;->mInRecording:Z

    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->startVideoRecording()V

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInRecording:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CloneModule;->stopVideoRecording(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->stopCaptureToPreviewResult()V

    :goto_0
    return-void
.end method

.method public onTapUp(FF)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInPlaying:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mTranslateY:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v0

    sub-float/2addr v2, p1

    float-to-int p1, v2

    int-to-float p2, p2

    int-to-float p1, p1

    invoke-static {p2, p1, v0, p0}, Lcom/xiaomi/fenshen/FenShenCam;->setPersonPos(FFII)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mInPausing:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->resumePlayEffect()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mInPausing:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->pausePlayEffect()V

    iput-boolean v1, p0, Lcom/android/camera/module/TimeFreezeModule;->mInPausing:Z

    :goto_0
    return v1
.end method

.method public onTimeFreezeClicked()V
    .locals 5

    const-string v0, "TimeFreezeModule"

    const-string v1, "onTimeFreezeClicked"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x1a2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->getStatus()Lcom/android/camera/fragment/clone/Status;

    move-result-object v2

    sget-object v3, Lcom/android/camera/fragment/clone/Status;->CAPTURING:Lcom/android/camera/fragment/clone/Status;

    if-eq v2, v3, :cond_0

    const-string p0, "onPictureTakenImageConsumed not capturing"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInFreezing:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/camera/module/TimeFreezeModule;->mInFreezing:Z

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->stopTimeFreeze()V

    iget-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInRecording:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->doCancel()V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->cancelTimeFreezeCountDown()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInFreezing:Z

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->startTimeFreeze()V

    iget-boolean v3, p0, Lcom/android/camera/module/TimeFreezeModule;->mInRecording:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->startTimeFreezeCountDown()V

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f1002cf

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->updateCaptureMessage(Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onVideoSaveFinish()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInSaving:Z

    invoke-virtual {p0}, Lcom/android/camera/module/TimeFreezeModule;->doCancel()V

    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->onVideoSaveFinish()V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->release()V

    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInRecording:Z

    return-void
.end method

.method protected resumePreviewIfNeeded()V
    .locals 2

    const-string v0, "TimeFreezeModule"

    const-string v1, "resumePreviewIfNeeded"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CloneModule;->mIsFinished:Z

    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->resumePreview()V

    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->cancelPhotoOrVideo()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimeFreezeFilmRatioEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->setFilmFormat(Z)V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->start()V

    return-void
.end method

.method protected saveVideo()V
    .locals 5

    const-string v0, "TimeFreezeModule"

    const-string v1, "onSaveVideo"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/TimeFreezeModule;->mInSaving:Z

    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f100743

    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/camera/Util;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/CloneModule;->mVideoFileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/CloneModule;->mVideoFilePath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveVideo start, path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/CloneModule;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "video/hevc"

    invoke-static {v0}, Lcom/xiaomi/fenshen/FenShenCam;->setVideoCodec(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/CloneModule;->mVideoFilePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->saveToVideo(Ljava/lang/String;)V

    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInRecording:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/CloneModule;->mIsFinished:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected startVideoRecording(Lcom/xiaomi/fenshen/FenShenCam$Mode;Lcom/android/camera/protocol/ModeProtocol$CloneProcess;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->cancelTimeFreezeCountDown()V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->startRecordVideoTF()V

    if-eqz p2, :cond_0

    const/4 p0, -0x1

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->updateCaptureMessage(IZ)V

    :cond_0
    return-void
.end method

.method protected stopVideoRecording(ZLcom/xiaomi/fenshen/FenShenCam$Mode;Lcom/android/camera/protocol/ModeProtocol$CloneProcess;)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-interface {p3, p2, v0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->updateCaptureMessage(IZ)V

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->stopRecordVideoTF()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mInPlaying:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->cancelVideo()V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->start()V

    :goto_0
    return-void
.end method
