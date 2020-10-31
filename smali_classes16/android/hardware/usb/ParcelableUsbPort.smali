.class public final Landroid/hardware/usb/ParcelableUsbPort;
.super Ljava/lang/Object;
.source "ParcelableUsbPort.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/ParcelableUsbPort;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mSupportedContaminantProtectionModes:I

.field private final mSupportedModes:I

.field private final mSupportsEnableContaminantPresenceDetection:Z

.field private final mSupportsEnableContaminantPresenceProtection:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/usb/ParcelableUsbPort$1;

    invoke-direct {v0}, Landroid/hardware/usb/ParcelableUsbPort$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/ParcelableUsbPort;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/usb/ParcelableUsbPort;->mId:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedModes:I

    iput p3, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedContaminantProtectionModes:I

    iput-boolean p4, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    iput-boolean p5, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIZZLandroid/hardware/usb/ParcelableUsbPort$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/hardware/usb/ParcelableUsbPort;-><init>(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public static of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;
    .registers 8

    new-instance v6, Landroid/hardware/usb/ParcelableUsbPort;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getSupportedContaminantProtectionModes()I

    move-result v3

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceProtection()Z

    move-result v4

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/usb/ParcelableUsbPort;-><init>(Ljava/lang/String;IIZZ)V

    return-object v6
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getUsbPort(Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbPort;
    .registers 10

    new-instance v7, Landroid/hardware/usb/UsbPort;

    iget-object v2, p0, Landroid/hardware/usb/ParcelableUsbPort;->mId:Ljava/lang/String;

    iget v3, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedModes:I

    iget v4, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedContaminantProtectionModes:I

    iget-boolean v5, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    iget-boolean v6, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbPort;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZ)V

    return-object v7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedContaminantProtectionModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
