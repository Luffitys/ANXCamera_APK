.class Landroid/bluetooth/BluetoothProfileConnector$2;
.super Ljava/lang/Object;
.source "BluetoothProfileConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothProfileConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothProfileConnector;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothProfileConnector;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    const-string v1, "Proxy object connected"

    # invokes: Landroid/bluetooth/BluetoothProfileConnector;->logDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothProfileConnector;->access$200(Landroid/bluetooth/BluetoothProfileConnector;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothProfileConnector;->getServiceInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    # setter for: Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothProfileConnector;->access$302(Landroid/bluetooth/BluetoothProfileConnector;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    # getter for: Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileConnector;->access$400(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    # getter for: Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileConnector;->access$400(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    # getter for: Landroid/bluetooth/BluetoothProfileConnector;->mProfileId:I
    invoke-static {v1}, Landroid/bluetooth/BluetoothProfileConnector;->access$500(Landroid/bluetooth/BluetoothProfileConnector;)I

    move-result v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    # getter for: Landroid/bluetooth/BluetoothProfileConnector;->mProfileProxy:Landroid/bluetooth/BluetoothProfile;
    invoke-static {v2}, Landroid/bluetooth/BluetoothProfileConnector;->access$600(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_2d
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    const-string v1, "Proxy object disconnected"

    # invokes: Landroid/bluetooth/BluetoothProfileConnector;->logDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothProfileConnector;->access$200(Landroid/bluetooth/BluetoothProfileConnector;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    # invokes: Landroid/bluetooth/BluetoothProfileConnector;->doUnbind()V
    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileConnector;->access$100(Landroid/bluetooth/BluetoothProfileConnector;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    # getter for: Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileConnector;->access$400(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    # getter for: Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileConnector;->access$400(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector$2;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    # getter for: Landroid/bluetooth/BluetoothProfileConnector;->mProfileId:I
    invoke-static {v1}, Landroid/bluetooth/BluetoothProfileConnector;->access$500(Landroid/bluetooth/BluetoothProfileConnector;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    :cond_23
    return-void
.end method
