.class Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

.field final synthetic val$advertisingSid:I

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$skip:I

.field final synthetic val$status:I

.field final synthetic val$syncHandle:I

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;ILandroid/bluetooth/BluetoothDevice;IIII)V
    .registers 8

    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iput p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$syncHandle:I

    iput-object p3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput p4, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$advertisingSid:I

    iput p5, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$skip:I

    iput p6, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$timeout:I

    iput p7, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iget-object v1, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$syncHandle:I

    iget-object v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget v4, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$advertisingSid:I

    iget v5, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$skip:I

    iget v6, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$timeout:I

    iget v7, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$status:I

    invoke-virtual/range {v1 .. v7}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V

    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$status:I

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iget-object v0, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    iget-object v0, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/Map;

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iget-object v1, v1, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-void
.end method
