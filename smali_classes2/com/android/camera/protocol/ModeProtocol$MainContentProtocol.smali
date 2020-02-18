.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;
.implements Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MainContentProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xa6


# virtual methods
.method public abstract adjustHistogram(I)V
.end method

.method public abstract getFaceWaterMarkInfos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoTagContent()Ljava/lang/String;
.end method

.method public abstract hideDelayNumber()V
.end method

.method public abstract hideReviewViews()V
.end method

.method public abstract isFaceLocationOK()Z
.end method

.method public abstract isFocusViewMoving()Z
.end method

.method public abstract isZoomViewMoving()Z
.end method

.method public abstract onViewTouchEvent(ILandroid/view/MotionEvent;)Z
.end method

.method public abstract performHapticFeedback(I)V
.end method

.method public abstract processingFinish(Z)V
.end method

.method public abstract processingPause()V
.end method

.method public abstract processingResume()V
.end method

.method public abstract processingStart(Ljava/lang/String;)V
.end method

.method public abstract setCenterHint(ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract setMimojiDetectTipType(I)V
.end method

.method public abstract setPreviewAspectRatio(F)V
.end method

.method public abstract showDelayNumber(I)V
.end method

.method public abstract showReviewViews(Landroid/graphics/Bitmap;)V
.end method

.method public abstract updateCinematicAspectRatioSwitched(Z)V
.end method

.method public abstract updateContentDescription()V
.end method

.method public abstract updateFocusMode(Ljava/lang/String;)V
.end method

.method public abstract updateGradienterSwitched(Z)V
.end method

.method public abstract updateHistogramStats([I)V
.end method

.method public abstract updateHistogramStats([I[I[I)V
.end method

.method public abstract updateMimojiFaceDetectResultTip(Z)V
.end method

.method public abstract updateRGBHistogramSwitched(Z)V
.end method

.method public abstract updateReferenceLineSwitched(Z)V
.end method

.method public abstract updateZoomRatio(FF)V
.end method

.method public abstract updateZoomViewMarginBottom(IZ)V
.end method
