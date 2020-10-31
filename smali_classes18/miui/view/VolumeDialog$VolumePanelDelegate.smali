.class public interface abstract Lmiui/view/VolumeDialog$VolumePanelDelegate;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VolumePanelDelegate"
.end annotation


# virtual methods
.method public abstract disableSafeMediaVolume()V
.end method

.method public abstract getMasterStreamType()I
.end method

.method public abstract getRingerMode()I
.end method

.method public abstract getStreamMinVolume(I)I
.end method

.method public abstract isStreamAffectedByMute(I)Z
.end method

.method public abstract notifyVolumeControllerVisible(Z)V
.end method

.method public abstract setRingerMode(I)V
.end method

.method public abstract showSafeVolumeDialogByFlags(I)Z
.end method
