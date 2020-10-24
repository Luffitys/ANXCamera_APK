.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xa2


# virtual methods
.method public abstract adjustViewBackground()V
.end method

.method public abstract animBottomBlackCover()V
.end method

.method public abstract announceForAccessibility(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract enableStopButton()V
.end method

.method public abstract entryOrExitMiMojiGif(Z)V
.end method

.method public abstract filterUiChange()V
.end method

.method public abstract forceSwitchFront()Z
.end method

.method public abstract hideDocumentReviewViews()V
.end method

.method public abstract hideExtra()V
.end method

.method public abstract isShowFilterView()Z
.end method

.method public abstract isShowLightingView()Z
.end method

.method public abstract processingAudioCapture(Z)V
.end method

.method public abstract processingFailed()V
.end method

.method public abstract processingFinish()V
.end method

.method public abstract processingLongExposePrepare()V
.end method

.method public abstract processingLongExposeStart()V
.end method

.method public abstract processingMimojiBack()V
.end method

.method public abstract processingMimojiPrepare()V
.end method

.method public abstract processingPause()V
.end method

.method public abstract processingPostAction()V
.end method

.method public abstract processingPrepare()V
.end method

.method public abstract processingResume()V
.end method

.method public abstract processingSpeechShutter(Z)V
.end method

.method public abstract processingStart()V
.end method

.method public abstract processingWorkspace(Z)V
.end method

.method public abstract setBackgroundColor(I)V
.end method

.method public abstract setLightingViewStatus(Z)V
.end method

.method public abstract showCameraPicker(Z)V
.end method

.method public abstract showDocumentReviewViews(Landroid/graphics/Bitmap;[F)V
.end method

.method public abstract showOrHideBottom(Z)V
.end method

.method public abstract showOrHideBottomViewWithAnim(Z)V
.end method

.method public abstract showOrHideFilterView()Z
.end method

.method public abstract showOrHideLightingView()Z
.end method

.method public abstract showOrHideLoadingProgress(ZZ)V
.end method

.method public abstract showOrHideMiMojiView()Z
.end method

.method public abstract showOrHideMimojiProgress(Z)V
.end method

.method public abstract switchModeOrExternalTipLayout(Z)V
.end method

.method public abstract switchThumbnailFunction(Z)V
.end method

.method public abstract updateInstallState(I)V
.end method

.method public abstract updateLoading(Z)V
.end method

.method public abstract updatePauseAndCaptureView(Z)V
.end method

.method public abstract updateRecordingTime(Ljava/lang/String;)V
.end method

.method public abstract updateResourceState(I)V
.end method

.method public abstract updateThumbnail(Lcom/android/camera/Thumbnail;ZI)V
.end method
