.class Lcom/miui/whetstone/PowerKeeperPolicy$Client;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Client"
.end annotation


# instance fields
.field private mAllowed:Z

.field private mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mIBinder:Landroid/os/IBinder;

.field private mScanning:Z

.field private mUid:I

.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/bluetooth/BleScanWrapper;Landroid/os/IBinder;I)V
    .registers 6

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    iput-object p3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    iput p4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mAllowed:Z

    return-void
.end method

.method static synthetic access$600(Lcom/miui/whetstone/PowerKeeperPolicy$Client;)I
    .registers 2

    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    return v0
.end method


# virtual methods
.method public clearResource()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public getAllowed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mAllowed:Z

    return v0
.end method

.method public getScanning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 6

    const-string v0, "PowerKeeperPolicy"

    :try_start_2
    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->VERBOSE:Z
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkToDeath for mUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_30} :catch_31

    goto :goto_48

    :catch_31
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to link deathRecipient for client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_48
    return-void
.end method

.method public setAllowed(Z)V
    .registers 4

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " setAllowed, allowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerKeeperPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mAllowed:Z

    return-void
.end method

.method public setScanning(Z)V
    .registers 4

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " setScanning, scanning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerKeeperPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    return-void
.end method

.method public startLeScan()V
    .registers 8

    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    if-eqz v0, :cond_28

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startLeScan, uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is scanning"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerKeeperPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void

    :cond_28
    :try_start_28
    const-string v0, "bluetooth_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_72

    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_38} :catch_73

    :try_start_38
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ForceStartLeScan, uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->logdWithLocal(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1300(Lcom/miui/whetstone/PowerKeeperPolicy;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BleScanWrapper;->startScan(Landroid/bluetooth/IBluetoothGatt;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_5a} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_5a} :catch_73

    goto :goto_72

    :catch_5b
    move-exception v3

    :try_start_5c
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startLeScan remoteException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->logeWithLocal(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1400(Lcom/miui/whetstone/PowerKeeperPolicy;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_72} :catch_73

    :cond_72
    :goto_72
    goto :goto_8a

    :catch_73
    move-exception v0

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLeScan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->logeWithLocal(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1400(Lcom/miui/whetstone/PowerKeeperPolicy;Ljava/lang/String;)V

    :goto_8a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    return-void
.end method

.method public stopLeScan()V
    .registers 8

    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    if-nez v0, :cond_28

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopLeScan, uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not scanning"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerKeeperPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void

    :cond_28
    :try_start_28
    const-string v0, "bluetooth_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_72

    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ForceStopLeScan, uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->logdWithLocal(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1300(Lcom/miui/whetstone/PowerKeeperPolicy;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_55} :catch_73

    :try_start_55
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BleScanWrapper;->stopScan(Landroid/bluetooth/IBluetoothGatt;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5a} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5a} :catch_73

    goto :goto_72

    :catch_5b
    move-exception v3

    :try_start_5c
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopLeScan remoteException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->logeWithLocal(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1400(Lcom/miui/whetstone/PowerKeeperPolicy;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_72} :catch_73

    :cond_72
    :goto_72
    goto :goto_8a

    :catch_73
    move-exception v0

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopLeScan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->logeWithLocal(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1400(Lcom/miui/whetstone/PowerKeeperPolicy;Ljava/lang/String;)V

    :goto_8a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isAllow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlinkToDeath()V
    .registers 5

    const-string v0, "PowerKeeperPolicy"

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_4f

    :try_start_6
    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->VERBOSE:Z
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlinkToDeath for mUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_37
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_37} :catch_38

    goto :goto_4f

    :catch_38
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to unlink deathRecipient for client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    :goto_4f
    return-void
.end method
