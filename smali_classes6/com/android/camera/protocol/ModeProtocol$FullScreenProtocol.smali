.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$FullScreenProtocol;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xc4


# virtual methods
.method public abstract getSaveContentValues()Landroid/content/ContentValues;
.end method

.method public abstract hideScreenLight()V
.end method

.method public abstract isLiveRecordPreviewShown()Z
.end method

.method public abstract isLiveRecordSaving()Z
.end method

.method public abstract onLiveSaveToLocalFinished(Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract onRecordSegmentCreated()V
.end method

.method public abstract quitLiveRecordPreview(Z)V
.end method

.method public abstract setScreenLightColor(I)V
.end method

.method public abstract showScreenLight()Z
.end method

.method public abstract startLiveRecordPreview(Landroid/content/ContentValues;)V
.end method

.method public abstract startLiveRecordSaving()V
.end method
