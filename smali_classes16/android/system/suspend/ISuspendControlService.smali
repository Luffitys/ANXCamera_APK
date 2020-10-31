.class public interface abstract Landroid/system/suspend/ISuspendControlService;
.super Ljava/lang/Object;
.source "ISuspendControlService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/suspend/ISuspendControlService$Stub;,
        Landroid/system/suspend/ISuspendControlService$Default;
    }
.end annotation


# virtual methods
.method public abstract enableAutosuspend()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract forceSuspend()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWakeLockStats()[Landroid/system/suspend/WakeLockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Landroid/system/suspend/ISuspendCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
