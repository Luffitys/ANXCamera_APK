.class public Lmiui/upnp/manager/ctrlpoint/UnknownDevice;
.super Lmiui/upnp/manager/ctrlpoint/AbstractDevice;
.source "UnknownDevice.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/manager/ctrlpoint/UnknownDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_TYPE:Lmiui/upnp/typedef/device/urn/DeviceType;

.field private static final classLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lmiui/upnp/typedef/device/urn/DeviceType;

    const-string v1, "?"

    invoke-direct {v0, v1, v1}, Lmiui/upnp/typedef/device/urn/DeviceType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->DEVICE_TYPE:Lmiui/upnp/typedef/device/urn/DeviceType;

    const-class v0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;

    sput-object v0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->classLock:Ljava/lang/Object;

    new-instance v0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice$1;

    invoke-direct {v0}, Lmiui/upnp/manager/ctrlpoint/UnknownDevice$1;-><init>()V

    sput-object v0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/upnp/manager/ctrlpoint/UnknownDevice$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lmiui/upnp/typedef/device/Device;)V
    .registers 2

    invoke-direct {p0}, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;-><init>()V

    iput-object p1, p0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->device:Lmiui/upnp/typedef/device/Device;

    return-void
.end method

.method public static create(Lmiui/upnp/typedef/device/Device;)Lmiui/upnp/manager/ctrlpoint/UnknownDevice;
    .registers 3

    sget-object v0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->classLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;

    invoke-direct {v1, p0}, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;-><init>(Lmiui/upnp/typedef/device/Device;)V

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    const-class v0, Lmiui/upnp/typedef/device/Device;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/device/Device;

    iput-object v0, p0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->device:Lmiui/upnp/typedef/device/Device;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->device:Lmiui/upnp/typedef/device/Device;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
