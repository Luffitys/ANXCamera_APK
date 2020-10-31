.class public Lcom/miui/mishare/RemoteDevice;
.super Ljava/lang/Object;
.source "RemoteDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/RemoteDevice$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/mishare/RemoteDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_BLUETOOTH_LE_MAC_ADDRESS:Ljava/lang/String; = "ble_ad"

.field public static final KEY_DEVICE_CODE:Ljava/lang/String; = "dc"

.field public static final KEY_DEVICE_MANUFACTURE:Ljava/lang/String; = "manufacture"

.field public static final KEY_DEVICE_MODEL:Ljava/lang/String; = "model"

.field public static final KEY_ICON_COLOR:Ljava/lang/String; = "ic"

.field public static final KEY_MANUFACTURE_CODE:Ljava/lang/String; = "mc"

.field public static final KEY_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final KEY_NICKNAME_HAS_MORE:Ljava/lang/String; = "nickname_has_more"

.field public static final KEY_PORT:Ljava/lang/String; = "p"

.field public static final KEY_RSSI:Ljava/lang/String; = "rssi"

.field public static final KEY_STATUS:Ljava/lang/String; = "s"

.field public static final KEY_SUPPORTED_GUIDING_NETWORK_TYPE:Ljava/lang/String; = "sgnt"

.field public static final KEY_SUPPORT_5G:Ljava/lang/String; = "5g"

.field public static final KEY_WIFI_AP_5G:Ljava/lang/String; = "ap_5g"

.field public static final KEY_WIFI_AP_SSID:Ljava/lang/String; = "ap_ssid"

.field public static final KEY_WIFI_P2P_FREQUENCY:Ljava/lang/String; = "p2p_freq"

.field public static final KEY_WIFI_P2P_MAC_ADDRESS:Ljava/lang/String; = "p2p_ad"


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/mishare/RemoteDevice$1;

    invoke-direct {v0}, Lcom/miui/mishare/RemoteDevice$1;-><init>()V

    sput-object v0, Lcom/miui/mishare/RemoteDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/mishare/RemoteDevice;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/miui/mishare/RemoteDevice$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/mishare/RemoteDevice;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/miui/mishare/RemoteDevice;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Lcom/miui/mishare/RemoteDevice;

    iget-object v0, v0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_10
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPC()Z
    .registers 4

    iget-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_10

    const/4 v1, -0x1

    const-string v2, "sgnt"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/mishare/RemoteDevice;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
