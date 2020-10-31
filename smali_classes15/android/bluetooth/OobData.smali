.class public Landroid/bluetooth/OobData;
.super Ljava/lang/Object;
.source "OobData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/OobData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLeBluetoothDeviceAddress:[B

.field private mLeSecureConnectionsConfirmation:[B

.field private mLeSecureConnectionsRandom:[B

.field private mSecurityManagerTk:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/OobData$1;

    invoke-direct {v0}, Landroid/bluetooth/OobData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeBluetoothDeviceAddress:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mSecurityManagerTk:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsConfirmation:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsRandom:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/OobData$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/OobData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getLeBluetoothDeviceAddress()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeBluetoothDeviceAddress:[B

    return-object v0
.end method

.method public getLeSecureConnectionsConfirmation()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsConfirmation:[B

    return-object v0
.end method

.method public getLeSecureConnectionsRandom()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsRandom:[B

    return-object v0
.end method

.method public getSecurityManagerTk()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/OobData;->mSecurityManagerTk:[B

    return-object v0
.end method

.method public setLeBluetoothDeviceAddress([B)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/OobData;->mLeBluetoothDeviceAddress:[B

    return-void
.end method

.method public setLeSecureConnectionsConfirmation([B)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsConfirmation:[B

    return-void
.end method

.method public setLeSecureConnectionsRandom([B)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsRandom:[B

    return-void
.end method

.method public setSecurityManagerTk([B)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/OobData;->mSecurityManagerTk:[B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeBluetoothDeviceAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/bluetooth/OobData;->mSecurityManagerTk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsConfirmation:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeSecureConnectionsRandom:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
