.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$TopAlert;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;


# static fields
.field public static final TYPE_TAG:I = 0xac


# virtual methods
.method public abstract addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract alertAiAudio(II)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertAiAudioBGHint(II)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertAiAudioMutexToastIfNeed(Landroid/content/Context;I)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertAiDetectTipHint(IIJ)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertAiEnhancedVideoHint(II)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertAiSceneSelector(I)V
.end method

.method public abstract alertAutoHibernationDescTip(Ljava/lang/String;IIJ)V
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertDocumentTip(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertDualVideoHint(II)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertFastmotionIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract alertFastmotionProValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method public abstract alertFastmotionValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract alertFlash(ILjava/lang/String;Z)V
.end method

.method public abstract alertHDR(IZZ)V
.end method

.method public abstract alertHandGestureHint(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertLightingTip(I)V
.end method

.method public abstract alertLiveShotHint(II)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertMacroModeHint(II)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertMimojiFaceDetect(ZI)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertMoonModeSelector(IZ)V
.end method

.method public abstract alertMusicClose(Z)V
.end method

.method public abstract alertParameterDescriptionTip(II)V
.end method

.method public abstract alertParameterResetTip(ZII)V
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertProColourHint(II)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertRecommendDescTip(Ljava/lang/String;II)V
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertRecommendDescTip(Ljava/lang/String;IIJ)V
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertSlideSwitchLayout(ZI)V
.end method

.method public abstract alertSubtitleHint(II)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertSuperNightSeTip(I)V
.end method

.method public abstract alertSwitchTip(Ljava/lang/String;II)V
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertSwitchTip(Ljava/lang/String;IIIJ)V
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertSwitchTip(Ljava/lang/String;IILjava/lang/String;J)V
.end method

.method public abstract alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract alertTimerBurstHint(II)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertTopHint(II)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertTopHint(IIJ)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertTopHint(ILjava/lang/String;)V
.end method

.method public abstract alertTopHint(ILjava/lang/String;J)V
.end method

.method public abstract alertUpdateValue(IILjava/lang/String;)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertVideoUltraClear(II)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract alertVideoUltraClear(ILjava/lang/String;)V
.end method

.method public abstract animTopBlackCover()V
.end method

.method public abstract canProvide()Z
.end method

.method public abstract clearAlertStatus()V
.end method

.method public abstract clearAllTipsState()V
.end method

.method public abstract clearFastmotionValue()V
.end method

.method public abstract clearVideoUltraClear()V
.end method

.method public abstract containShortDurationDescriptionTips(Ljava/lang/String;)Z
.end method

.method public varargs abstract disableMenuItem(Z[I)V
.end method

.method public varargs abstract enableMenuItem(Z[I)V
.end method

.method public abstract getAlertIsShow()Z
.end method

.method public abstract getCurrentAiSceneLevel()I
.end method

.method public abstract getTipsState(Ljava/lang/String;)Z
.end method

.method public abstract getVideoTag()Lcom/android/camera/ui/VideoTagView;
.end method

.method public abstract hideAlert()V
.end method

.method public abstract hideConfigMenu()V
.end method

.method public abstract hideDelayNumber()V
.end method

.method public abstract hideExtraMenu()V
.end method

.method public abstract hideRecommendDescTip(Ljava/lang/String;)V
.end method

.method public abstract hideSwitchTip()V
.end method

.method public abstract isContainAlertLightingTip(I)Z
.end method

.method public varargs abstract isContainAlertRecommendTip([I)Z
    .param p1    # [I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract isCurrentRecommendTipText(I)Z
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract isExtraMenuShowing()Z
.end method

.method public abstract isHDRShowing()Z
.end method

.method public abstract isShowBacklightSelector()Z
.end method

.method public abstract reInitAlert(Z)V
.end method

.method public abstract refreshExtraMenu()V
.end method

.method public abstract refreshHistogramStatsView()V
.end method

.method public abstract removeExtraMenu(I)V
.end method

.method public abstract reverseExpandTopBar(Z)Z
.end method

.method public abstract setAiSceneImageLevel(I)V
.end method

.method public abstract setAlertAnim(Z)V
.end method

.method public abstract setConfigMenuResetWhenRestartmode()V
.end method

.method public abstract setRecordingTimeState(I)V
.end method

.method public abstract setRecordingTimeState(IZ)V
.end method

.method public abstract setShow(Z)V
.end method

.method public abstract setTipsState(Ljava/lang/String;Z)V
.end method

.method public abstract setVolumeValue([F)V
.end method

.method public abstract showConfigMenu()V
.end method

.method public abstract showDelayNumber(I)V
.end method

.method public abstract showDocumentStateButton(I)V
.end method

.method public abstract startLiveShotAnimation()V
.end method

.method public varargs abstract updateConfigItem([I)V
.end method

.method public abstract updateContentDescription()V
.end method

.method public abstract updateFastmotionProRecordingTime(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateHistogramStatsData([I)V
.end method

.method public abstract updateHistogramStatsData([I[I[I)V
.end method

.method public abstract updateProVideoRecordingSimpleView(Z)V
.end method

.method public abstract updateRGBHistogramSwitched(Z)V
.end method

.method public abstract updateRecordingTime(Ljava/lang/String;)V
.end method

.method public abstract updateRecordingTimeStyle(Z)V
.end method

.method public abstract updateTopAlertLayout()V
.end method
