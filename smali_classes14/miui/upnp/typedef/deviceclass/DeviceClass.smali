.class public Lmiui/upnp/typedef/deviceclass/DeviceClass;
.super Ljava/lang/Object;
.source "DeviceClass.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/deviceclass/DeviceClass;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/upnp/typedef/deviceclass/DeviceClass$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/deviceclass/DeviceClass$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lmiui/upnp/typedef/deviceclass/DeviceClass;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/upnp/typedef/deviceclass/DeviceClass$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/upnp/typedef/deviceclass/DeviceClass;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lmiui/upnp/typedef/device/urn/DeviceType;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/upnp/typedef/device/urn/DeviceType;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    iput-object p2, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->clazz:Ljava/lang/Class;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/upnp/typedef/device/urn/DeviceType;->create(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/DeviceType;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lmiui/upnp/typedef/deviceclass/DeviceClass;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    move-object v0, p1

    check-cast v0, Lmiui/upnp/typedef/deviceclass/DeviceClass;

    iget-object v1, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    iget-object v2, v0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/urn/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getClazz()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getDeviceType()Lmiui/upnp/typedef/device/urn/DeviceType;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-virtual {v0}, Lmiui/upnp/typedef/device/urn/DeviceType;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->deviceType:Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-virtual {v0}, Lmiui/upnp/typedef/device/urn/DeviceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/upnp/typedef/deviceclass/DeviceClass;->clazz:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
