.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;
.implements Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xa6


# virtual methods
.method public abstract checkTouchRegionContainSplitFocusExposure(Landroid/view/MotionEvent;)V
.end method

.method public abstract getFaceWaterMarkInfos()Ljava/util/List;
.end method

.method public abstract getReferenceLine()Landroid/view/View;
.end method

.method public abstract hideReferenceGradienter()V
.end method

.method public abstract hideReviewViews()V
.end method

.method public abstract isFaceLocationOK()Z
.end method

.method public abstract isFocusViewMoving()Z
.end method

.method public abstract isShowReviewViews()Z
.end method

.method public abstract isSplitFocusExposureDown()Z
.end method

.method public abstract isZoomViewMoving()Z
.end method

.method public abstract moveWatermarkLayout(II)V
.end method

.method public abstract onKeyEventSmoothZoom(ILandroid/view/KeyEvent;)V
.end method

.method public abstract onViewTouchEvent(ILandroid/view/MotionEvent;)Z
.end method

.method public abstract performHapticFeedback(I)V
.end method

.method public abstract processingFinish()V
.end method

.method public abstract processingStart(Ljava/lang/String;)V
.end method

.method public abstract setCenterHint(ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract setIdPhotoBoxVisible(Z)V
.end method

.method public abstract setMimojiDetectTipType(I)V
.end method

.method public abstract setPreviewAspectRatio(F)V
.end method

.method public abstract setWatermarkVisible(I)V
.end method

.method public abstract showReviewViews(Landroid/graphics/Bitmap;)V
.end method

.method public abstract updateCinematicAspectRatioSwitched(Z)V
.end method

.method public abstract updateContentDescription()V
.end method

.method public abstract updateCurrentZoomRatio(F)V
.end method

.method public abstract updateFocusMode(Ljava/lang/String;)V
.end method

.method public abstract updateMimojiFaceDetectResultTip(Z)V
.end method

.method public abstract updateReferenceGradienterSwitched()V
.end method

.method public abstract updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
.end method

.method public abstract updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V
.end method

.method public abstract updateZoomRatio(FF)V
.end method
