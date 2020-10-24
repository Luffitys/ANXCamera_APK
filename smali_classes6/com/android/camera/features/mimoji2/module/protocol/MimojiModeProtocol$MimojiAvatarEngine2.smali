.class public interface abstract Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
.implements Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;
.implements Lcom/android/camera2/Camera2Proxy$PreviewCallback;


# static fields
.field public static final TYPE_TAG:I = 0xf6


# virtual methods
.method public abstract backToPreview(ZZ)V
.end method

.method public abstract changeToGif(Z)V
.end method

.method public abstract deleteMimojiCache(I)Z
.end method

.method public abstract getGifBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getTimeValue()Ljava/lang/String;
.end method

.method public abstract getVideoCache()Ljava/lang/String;
.end method

.method public abstract initAvatarEngine(IIIIZ)V
.end method

.method public abstract initMimojiResource()V
.end method

.method public abstract isAvatarInited()Z
.end method

.method public abstract isOnCreateMimoji()Z
.end method

.method public abstract isRecordStopping()Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract onCaptureImage()V
.end method

.method public abstract onCreateCapture()Z
.end method

.method public abstract onDeviceRotationChange(I)V
.end method

.method public abstract onDrawFrame(Landroid/graphics/Rect;IIZ)V
.end method

.method public abstract onMimojiChangeBg(Lcom/android/camera/features/mimoji2/bean/MimojiBgInfo;)V
.end method

.method public abstract onMimojiChangeTimbre(Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;I)V
.end method

.method public abstract onMimojiCreate()V
.end method

.method public abstract onMimojiDeleted()V
.end method

.method public abstract onMimojiInitFinish()V
.end method

.method public abstract onMimojiSelect(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;Z)V
.end method

.method public abstract onRecordStart()V
.end method

.method public abstract onRecordStop(I)V
.end method

.method public abstract release()V
.end method

.method public abstract reloadConfig()V
.end method

.method public abstract setDetectSuccess(Z)V
.end method

.method public abstract setDisableSingleTapUp(Z)V
.end method
