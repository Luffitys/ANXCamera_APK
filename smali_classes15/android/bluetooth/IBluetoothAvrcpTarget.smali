.class public interface abstract Landroid/bluetooth/IBluetoothAvrcpTarget;
.super Ljava/lang/Object;
.source "IBluetoothAvrcpTarget.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothAvrcpTarget$Stub;,
        Landroid/bluetooth/IBluetoothAvrcpTarget$Default;
    }
.end annotation


# virtual methods
.method public abstract sendVolumeChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
