.class public final Lmiui/bluetooth/ble/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/bluetooth/ble/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRssi:I

.field private mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

.field private mTimestampNanos:J

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/bluetooth/ble/ScanResult$1;

    invoke-direct {v0}, Lmiui/bluetooth/ble/ScanResult$1;-><init>()V

    sput-object v0, Lmiui/bluetooth/ble/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Lmiui/bluetooth/ble/ScanRecord;IJI)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/bluetooth/ble/ScanResult;->mType:I

    iput-object p1, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    iput p3, p0, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    iput-wide p4, p0, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    iput p6, p0, Lmiui/bluetooth/ble/ScanResult;->mType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/bluetooth/ble/ScanResult;->mType:I

    invoke-direct {p0, p1}, Lmiui/bluetooth/ble/ScanResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/bluetooth/ble/ScanResult$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/bluetooth/ble/ScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method private static varargs hash([Ljava/lang/Object;)I
    .registers 2

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    :cond_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_21

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lmiui/bluetooth/ble/ScanRecord;->parseFromBytes([B)Lmiui/bluetooth/ble/ScanRecord;

    move-result-object v0

    iput-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string v0, "null"

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3a

    :cond_12
    move-object v2, p1

    check-cast v2, Lmiui/bluetooth/ble/ScanResult;

    iget-object v3, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, v2, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v4}, Lmiui/bluetooth/ble/ScanResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget v3, p0, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    iget v4, v2, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    if-ne v3, v4, :cond_38

    iget-object v3, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    iget-object v4, v2, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    invoke-static {v3, v4}, Lmiui/bluetooth/ble/ScanResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-wide v3, p0, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    iget-wide v5, v2, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    :goto_39
    return v0

    :cond_3a
    :goto_3a
    return v1
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    iget-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDeviceType()I
    .registers 2

    iget v0, p0, Lmiui/bluetooth/ble/ScanResult;->mType:I

    return v0
.end method

.method public getRssi()I
    .registers 2

    iget v0, p0, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    return v0
.end method

.method public getScanRecord()Lmiui/bluetooth/ble/ScanRecord;
    .registers 2

    iget-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    return-object v0
.end method

.method public getTimestampNanos()J
    .registers 3

    iget-wide v0, p0, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/bluetooth/ble/ScanResult;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanResult{mDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mScanRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    invoke-static {v1}, Lmiui/bluetooth/ble/ScanResult;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    iget-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    if-eqz v0, :cond_23

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/bluetooth/ble/ScanResult;->mScanRecord:Lmiui/bluetooth/ble/ScanRecord;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/ScanRecord;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_26

    :cond_23
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    iget v0, p0, Lmiui/bluetooth/ble/ScanResult;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lmiui/bluetooth/ble/ScanResult;->mTimestampNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
