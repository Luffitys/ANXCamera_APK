.class public Lmiui/upnp/typedef/device/urn/DeviceType;
.super Lmiui/upnp/typedef/device/urn/Urn;
.source "DeviceType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/urn/DeviceType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/upnp/typedef/device/urn/DeviceType$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/DeviceType$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/urn/DeviceType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/upnp/typedef/device/urn/Urn;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Lmiui/upnp/typedef/device/urn/Urn;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/urn/DeviceType;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lmiui/upnp/typedef/device/urn/Urn;-><init>()V

    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->DEVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    invoke-super {p0, v0}, Lmiui/upnp/typedef/device/urn/Urn;->setType(Lmiui/upnp/typedef/device/urn/Urn$Type;)V

    const-string v0, "schemas-upnp-org"

    invoke-super {p0, v0}, Lmiui/upnp/typedef/device/urn/Urn;->setDomain(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lmiui/upnp/typedef/device/urn/Urn;->setSubType(Ljava/lang/String;)V

    invoke-super {p0, p2}, Lmiui/upnp/typedef/device/urn/Urn;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/DeviceType;
    .registers 3

    new-instance v0, Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/DeviceType;-><init>()V

    invoke-virtual {v0, p0}, Lmiui/upnp/typedef/device/urn/DeviceType;->parse(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    :cond_c
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/urn/DeviceType;->getSubType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Z
    .registers 5

    invoke-super {p0, p1}, Lmiui/upnp/typedef/device/urn/Urn;->parse(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_11

    :cond_7
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/urn/DeviceType;->getType()Lmiui/upnp/typedef/device/urn/Urn$Type;

    move-result-object v1

    sget-object v2, Lmiui/upnp/typedef/device/urn/Urn$Type;->DEVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    if-eq v1, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/upnp/typedef/device/urn/DeviceType;->parse(Ljava/lang/String;)Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/urn/DeviceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
