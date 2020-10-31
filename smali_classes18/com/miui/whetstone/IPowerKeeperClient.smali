.class public interface abstract Lcom/miui/whetstone/IPowerKeeperClient;
.super Ljava/lang/Object;
.source "IPowerKeeperClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IPowerKeeperClient$Stub;,
        Lcom/miui/whetstone/IPowerKeeperClient$Default;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_SCENE:I = 0x5

.field public static final KEYCODE_SCENE:I = 0x6

.field public static final SCREENON_SCENE:I = 0x3

.field public static final SYNC_SCENE:I = 0x4


# virtual methods
.method public abstract enableATrace(ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyBluetooth(IILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyEvent(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyFrozenAppWakeUpByHighPriorityAlarm(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyScreenOn()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyncEvent(IILjava/lang/String;Ljava/lang/String;[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract perfThermalBreakAcquire(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
