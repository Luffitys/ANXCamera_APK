.class public Landroid/mtp/MtpDeviceInfo;
.super Ljava/lang/Object;
.source "MtpDeviceInfo.java"


# instance fields
.field private mEventsSupported:[I

.field private mManufacturer:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mOperationsSupported:[I

.field private mSerialNumber:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSupported([II)Z
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p0, v2

    if-ne v3, p1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method


# virtual methods
.method public final getEventsSupported()[I
    .registers 2

    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mEventsSupported:[I

    return-object v0
.end method

.method public final getManufacturer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getOperationsSupported()[I
    .registers 2

    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mOperationsSupported:[I

    return-object v0
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isEventSupported(I)Z
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mEventsSupported:[I

    invoke-static {v0, p1}, Landroid/mtp/MtpDeviceInfo;->isSupported([II)Z

    move-result v0

    return v0
.end method

.method public isOperationSupported(I)Z
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mOperationsSupported:[I

    invoke-static {v0, p1}, Landroid/mtp/MtpDeviceInfo;->isSupported([II)Z

    move-result v0

    return v0
.end method
