.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0x3a3


# virtual methods
.method public abstract getSaveContentValues()Landroid/content/ContentValues;
.end method

.method public abstract onCombinePrepare(Landroid/content/ContentValues;)V
.end method

.method public abstract onKeyCodeCamera()V
.end method

.method public abstract onLiveSaveToLocalFinished(Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract onResultCombineFinished(Z)V
.end method

.method public abstract onResultPreviewFinished(Z)V
.end method

.method public abstract processingFinish()V
.end method

.method public abstract processingPause()V
.end method

.method public abstract processingPrepare()V
.end method

.method public abstract processingStart()V
.end method

.method public abstract resumePlay()V
.end method

.method public abstract setThumbnailOrientation(I)V
.end method

.method public abstract showExitConfirm()V
.end method

.method public abstract updateRecordingTime(Ljava/lang/String;)V
.end method
