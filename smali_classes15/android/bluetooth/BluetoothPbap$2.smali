.class Landroid/bluetooth/BluetoothPbap$2;
.super Ljava/lang/Object;
.source "BluetoothPbap.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPbap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPbap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPbap;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string v0, "Proxy object connected"

    # invokes: Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothPbap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPbap;

    move-result-object v1

    # setter for: Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothPbap;->access$202(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    # getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$300(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    # getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$300(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_22
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "Proxy object disconnected"

    # invokes: Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    # invokes: Landroid/bluetooth/BluetoothPbap;->doUnbind()V
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$100(Landroid/bluetooth/BluetoothPbap;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    # getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$300(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    # getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$300(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    :cond_1c
    return-void
.end method
