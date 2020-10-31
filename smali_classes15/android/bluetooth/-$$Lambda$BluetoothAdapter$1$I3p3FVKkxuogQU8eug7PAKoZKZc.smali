.class public final synthetic Landroid/bluetooth/-$$Lambda$BluetoothAdapter$1$I3p3FVKkxuogQU8eug7PAKoZKZc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic f$2:I

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$1$I3p3FVKkxuogQU8eug7PAKoZKZc;->f$0:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    iput-object p2, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$1$I3p3FVKkxuogQU8eug7PAKoZKZc;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$1$I3p3FVKkxuogQU8eug7PAKoZKZc;->f$2:I

    iput-object p4, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$1$I3p3FVKkxuogQU8eug7PAKoZKZc;->f$3:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$1$I3p3FVKkxuogQU8eug7PAKoZKZc;->f$0:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    iget-object v1, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$1$I3p3FVKkxuogQU8eug7PAKoZKZc;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$1$I3p3FVKkxuogQU8eug7PAKoZKZc;->f$2:I

    iget-object v3, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$1$I3p3FVKkxuogQU8eug7PAKoZKZc;->f$3:[B

    invoke-static {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter$1;->lambda$onMetadataChanged$0(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method
