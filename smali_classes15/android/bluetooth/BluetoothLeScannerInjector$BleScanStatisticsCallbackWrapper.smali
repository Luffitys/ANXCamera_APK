.class Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
.super Landroid/bluetooth/le/IScannerCallback$Stub;
.source "BluetoothLeScannerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeScannerInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BleScanStatisticsCallbackWrapper"
.end annotation


# instance fields
.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mScanCallback:Landroid/bluetooth/le/ScanCallback;


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/le/ScanCallback;)V
    .registers 3

    invoke-direct {p0}, Landroid/bluetooth/le/IScannerCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iput-object p2, p0, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V
    .registers 3

    return-void
.end method

.method public onScanManagerErrorCallback(I)V
    .registers 2

    return-void
.end method

.method public onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    return-void
.end method

.method public onScannerRegistered(II)V
    .registers 3

    return-void
.end method

.method public startBleScanStatistics()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetoothGatt;->registerStatisticsClient(Landroid/bluetooth/le/IScannerCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "BluetoothLeScannerInjector"

    const-string v2, "Failed to start ble scan statistics."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public stopBleScanStatistics()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetoothGatt;->unregisterStatisticsClient(Landroid/bluetooth/le/IScannerCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "BluetoothLeScannerInjector"

    const-string v2, "Failed to stop ble scan statistics."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method
