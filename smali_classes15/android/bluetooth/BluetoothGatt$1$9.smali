.class Landroid/bluetooth/BluetoothGatt$1$9;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothGatt$1;->onDescriptorRead(Ljava/lang/String;II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/BluetoothGatt$1;

.field final synthetic val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field final synthetic val$status:I

.field final synthetic val$value:[B


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGatt$1;ILandroid/bluetooth/BluetoothGattDescriptor;[B)V
    .registers 5

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1$9;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iput p2, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$status:I

    iput-object p3, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iput-object p4, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$value:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1$9;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v0, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$100(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v0

    if-eqz v0, :cond_20

    iget v1, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$status:I

    if-nez v1, :cond_15

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$value:[B

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    :cond_15
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1$9;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v1, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iget v3, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$status:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    :cond_20
    return-void
.end method
