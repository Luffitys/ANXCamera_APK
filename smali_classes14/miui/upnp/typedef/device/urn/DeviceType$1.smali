.class Lmiui/upnp/typedef/device/urn/DeviceType$1;
.super Ljava/lang/Object;
.source "DeviceType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/typedef/device/urn/DeviceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/upnp/typedef/device/urn/DeviceType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/urn/DeviceType$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/upnp/typedef/device/urn/DeviceType;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/upnp/typedef/device/urn/DeviceType;
    .registers 3

    new-instance v0, Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-direct {v0, p1}, Lmiui/upnp/typedef/device/urn/DeviceType;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/urn/DeviceType$1;->newArray(I)[Lmiui/upnp/typedef/device/urn/DeviceType;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiui/upnp/typedef/device/urn/DeviceType;
    .registers 3

    new-array v0, p1, [Lmiui/upnp/typedef/device/urn/DeviceType;

    return-object v0
.end method
