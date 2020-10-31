.class public Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Default;
.super Ljava/lang/Object;
.source "IBluetoothMiBlePropertyCallback.java"

# interfaces
.implements Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyProperty(Landroid/os/ParcelUuid;I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
