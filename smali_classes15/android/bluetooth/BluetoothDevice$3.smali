.class Landroid/bluetooth/BluetoothDevice$3;
.super Landroid/app/PropertyInvalidatedCache;
.source "BluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/bluetooth/BluetoothDevice;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Landroid/bluetooth/BluetoothDevice$3;->this$0:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected recompute(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Integer;
    .registers 4

    :try_start_0
    # getter for: Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->access$000()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetooth;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected bridge synthetic recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice$3;->recompute(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
