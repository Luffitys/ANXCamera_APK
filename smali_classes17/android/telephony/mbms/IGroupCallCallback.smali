.class public interface abstract Landroid/telephony/mbms/IGroupCallCallback;
.super Ljava/lang/Object;
.source "IGroupCallCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/IGroupCallCallback$Stub;,
        Landroid/telephony/mbms/IGroupCallCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onBroadcastSignalStrengthUpdated(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onError(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGroupCallStateChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
