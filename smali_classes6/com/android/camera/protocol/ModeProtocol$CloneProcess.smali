.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$CloneProcess;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0x1a2


# virtual methods
.method public abstract canSnap()Z
.end method

.method public abstract getMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;
.end method

.method public abstract getStatus()Lcom/android/camera/fragment/clone/Status;
.end method

.method public abstract isAdded()Z
.end method

.method public abstract onBackPress()V
.end method

.method public abstract onCountDownFinished()V
.end method

.method public abstract onFilmRatioChanged(Z)V
.end method

.method public abstract onPreviewPrepare(Landroid/content/ContentValues;)V
.end method

.method public abstract onSaveFinish(Landroid/net/Uri;)V
.end method

.method public abstract prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V
.end method

.method public abstract processingFinish()V
.end method

.method public abstract processingPrepare()V
.end method

.method public abstract processingStart()V
.end method

.method public abstract quit()V
.end method

.method public abstract setDetectedPersonInPreview(Z)V
.end method

.method public abstract showExitConfirm(Z)V
.end method

.method public abstract showPlayButton()V
.end method

.method public abstract showResetAndSaveEdit()V
.end method

.method public abstract showSaveAndGiveUp(Z)V
.end method

.method public abstract showStopAndCancel()V
.end method

.method public abstract stopCaptureToPreviewResult(Z)V
.end method

.method public abstract updateCaptureMessage(IZ)V
.end method

.method public abstract updateCaptureMessage(Ljava/lang/String;Z)V
.end method
