.class public Lmiui/bluetooth/ble/MiServiceData;
.super Ljava/lang/Object;
.source "MiServiceData.java"


# static fields
.field public static final CAPABILITY_CENTRAL:B = 0x2t

.field public static final CAPABILITY_CONNECTABLE:B = 0x1t

.field public static final CAPABILITY_ENCRYPT:B = 0x4t

.field public static final CAPABILITY_IO:B = 0x18t

.field private static final DATA_MIN_LENGTH:I = 0x5

.field private static final FLAG_BINDING:I = 0x200

.field private static final FLAG_CAPABILITY:I = 0x20

.field private static final FLAG_CENTRAL:I = 0x4

.field private static final FLAG_CONNECTED:I = 0x2

.field private static final FLAG_CUSTOM_DATA:I = 0x80

.field private static final FLAG_ENCRYPTED:I = 0x8

.field private static final FLAG_EVENT:I = 0x40

.field private static final FLAG_MAC_ADDRESS:I = 0x10

.field private static final FLAG_NEW_FACTORY:I = 0x1

.field private static final FLAG_SUBTITLE:I = 0x100

.field public static final MI_SERVICE_UUID:Landroid/os/ParcelUuid;

.field private static final UUID_BASE:Ljava/lang/String; = "0000%4s-0000-1000-8000-00805f9b34fb"


# instance fields
.field private mData:[B

.field private mFrameControl:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "fe95"

    aput-object v2, v0, v1

    const-string v1, "0000%4s-0000-1000-8000-00805f9b34fb"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lmiui/bluetooth/ble/MiServiceData;->MI_SERVICE_UUID:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_23

    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_23

    iput-object p1, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iput v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mVersion:I

    return-void

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mi Service data length must >= 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromScanRecord(Lmiui/bluetooth/ble/ScanRecord;)Lmiui/bluetooth/ble/MiServiceData;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lmiui/bluetooth/ble/ScanRecord;->getServiceData()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_1e

    :cond_a
    sget-object v1, Lmiui/bluetooth/ble/MiServiceData;->MI_SERVICE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v1}, Lmiui/bluetooth/ble/ScanRecord;->getServiceData(Landroid/os/ParcelUuid;)[B

    move-result-object v1

    if-eqz v1, :cond_1d

    array-length v2, v1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_17

    goto :goto_1d

    :cond_17
    new-instance v0, Lmiui/bluetooth/ble/MiServiceData;

    invoke-direct {v0, v1}, Lmiui/bluetooth/ble/MiServiceData;-><init>([B)V

    return-object v0

    :cond_1d
    :goto_1d
    return-object v0

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method private getEventDataIndex()I
    .registers 3

    const/4 v0, 0x5

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasMacAddress()Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, 0x6

    :cond_9
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasCapability()Z

    move-result v1

    if-eqz v1, :cond_11

    add-int/lit8 v0, v0, 0x1

    :cond_11
    return v0
.end method


# virtual methods
.method public getCapability()B
    .registers 5

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasCapability()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x5

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasMacAddress()Z

    move-result v1

    if-eqz v1, :cond_f

    add-int/lit8 v0, v0, 0x6

    :cond_f
    iget-object v1, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    array-length v2, v1

    add-int/lit8 v3, v0, 0x6

    if-lt v2, v3, :cond_19

    aget-byte v1, v1, v0

    return v1

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomData()[B
    .registers 7

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasCustomData()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x5

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasMacAddress()Z

    move-result v1

    if-eqz v1, :cond_f

    add-int/lit8 v0, v0, 0x6

    :cond_f
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasCapability()Z

    move-result v1

    if-eqz v1, :cond_17

    add-int/lit8 v0, v0, 0x1

    :cond_17
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasEvent()Z

    move-result v1

    if-eqz v1, :cond_1f

    add-int/lit8 v0, v0, 0x3

    :cond_1f
    iget-object v1, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    array-length v2, v1

    if-le v2, v0, :cond_2f

    aget-byte v2, v1, v0

    new-array v3, v2, [B

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_2f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getData()[B
    .registers 2

    iget-object v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    return-object v0
.end method

.method public getEvent()B
    .registers 5

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasEvent()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiServiceData;->getEventDataIndex()I

    move-result v0

    iget-object v1, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    array-length v2, v1

    add-int/lit8 v3, v0, 0x3

    if-lt v2, v3, :cond_16

    add-int/lit8 v2, v0, 0x2

    aget-byte v1, v1, v2

    return v1

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public getEventID()I
    .registers 5

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasEvent()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiServiceData;->getEventDataIndex()I

    move-result v0

    iget-object v1, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    return v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public getFrameCounter()I
    .registers 3

    iget-object v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMacAddress()[B
    .registers 6

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiServiceData;->hasMacAddress()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    array-length v1, v0

    const/16 v2, 0xb

    if-lt v1, v2, :cond_16

    const/4 v1, 0x6

    new-array v2, v1, [B

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProductID()I
    .registers 4

    iget-object v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mData:[B

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public hasCapability()Z
    .registers 2

    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasCustomData()Z
    .registers 2

    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasEvent()Z
    .registers 2

    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasMacAddress()Z
    .registers 2

    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSubTitle()Z
    .registers 2

    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isBindingFrame()Z
    .registers 2

    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isCentral()Z
    .registers 2

    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isConnected()Z
    .registers 2

    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isEncrypted()Z
    .registers 2

    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNewFactory()Z
    .registers 3

    iget v0, p0, Lmiui/bluetooth/ble/MiServiceData;->mFrameControl:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method
