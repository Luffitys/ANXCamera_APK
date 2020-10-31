.class public interface abstract Landroid/media/IRemoteVolumeController;
.super Ljava/lang/Object;
.source "IRemoteVolumeController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteVolumeController$Stub;,
        Landroid/media/IRemoteVolumeController$Default;
    }
.end annotation


# virtual methods
.method public abstract remoteVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateRemoteController(Landroid/media/session/MediaSession$Token;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
