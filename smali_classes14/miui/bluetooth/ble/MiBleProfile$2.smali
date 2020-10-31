.class Lmiui/bluetooth/ble/MiBleProfile$2;
.super Lmiui/bluetooth/ble/IBluetoothMiBleCallback$Stub;
.source "MiBleProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/bluetooth/ble/MiBleProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/bluetooth/ble/MiBleProfile;


# direct methods
.method constructor <init>(Lmiui/bluetooth/ble/MiBleProfile;)V
    .registers 2

    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleProfile$2;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-direct {p0}, Lmiui/bluetooth/ble/IBluetoothMiBleCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionState(Landroid/os/ParcelUuid;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionState() sate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiBleProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$2;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v0, v0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$2;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # setter for: Lmiui/bluetooth/ble/MiBleProfile;->mProfileState:I
    invoke-static {v0, p2}, Lmiui/bluetooth/ble/MiBleProfile;->access$002(Lmiui/bluetooth/ble/MiBleProfile;I)I

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile$2;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # getter for: Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile$2;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # getter for: Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/bluetooth/ble/MiBleProfile;->access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
