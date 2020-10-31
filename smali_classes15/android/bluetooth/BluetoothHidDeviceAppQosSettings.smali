.class public final Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppQosSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:I = -0x1

.field public static final SERVICE_BEST_EFFORT:I = 0x1

.field public static final SERVICE_GUARANTEED:I = 0x2

.field public static final SERVICE_NO_TRAFFIC:I


# instance fields
.field private final mDelayVariation:I

.field private final mLatency:I

.field private final mPeakBandwidth:I

.field private final mServiceType:I

.field private final mTokenBucketSize:I

.field private final mTokenRate:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mServiceType:I

    iput p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenRate:I

    iput p3, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenBucketSize:I

    iput p4, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mPeakBandwidth:I

    iput p5, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mLatency:I

    iput p6, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mDelayVariation:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDelayVariation()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mDelayVariation:I

    return v0
.end method

.method public getLatency()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mLatency:I

    return v0
.end method

.method public getPeakBandwidth()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mPeakBandwidth:I

    return v0
.end method

.method public getServiceType()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mServiceType:I

    return v0
.end method

.method public getTokenBucketSize()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenBucketSize:I

    return v0
.end method

.method public getTokenRate()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenRate:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mTokenBucketSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mPeakBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mLatency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->mDelayVariation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
