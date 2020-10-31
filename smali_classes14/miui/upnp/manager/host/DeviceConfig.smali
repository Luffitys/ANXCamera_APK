.class public Lmiui/upnp/manager/host/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# instance fields
.field private deviceName:Ljava/lang/String;

.field private discoveryTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/DiscoveryType;",
            ">;"
        }
    .end annotation
.end field

.field private manufacturer:Ljava/lang/String;

.field private manufacturerUrl:Ljava/lang/String;

.field private modelDescription:Ljava/lang/String;

.field private modelName:Ljava/lang/String;

.field private modelNumber:Ljava/lang/String;

.field private modelUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/manager/host/DeviceConfig;->discoveryTypes:Ljava/util/List;

    return-void
.end method

.method private genDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uuid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addDiscoveryType(Lmiui/upnp/typedef/device/DiscoveryType;)V
    .registers 3

    iget-object v0, p0, Lmiui/upnp/manager/host/DeviceConfig;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public build(Landroid/content/Context;Lmiui/upnp/typedef/device/urn/DeviceType;)Lmiui/upnp/typedef/device/Device;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/upnp/manager/host/DeviceConfig;->genDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmiui/upnp/typedef/device/Device;

    invoke-direct {v1, p2}, Lmiui/upnp/typedef/device/Device;-><init>(Lmiui/upnp/typedef/device/urn/DeviceType;)V

    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->discoveryTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/upnp/typedef/device/DiscoveryType;

    invoke-virtual {v1, v3}, Lmiui/upnp/typedef/device/Device;->addDiscoveryType(Lmiui/upnp/typedef/device/DiscoveryType;)V

    goto :goto_f

    :cond_1f
    invoke-virtual {v1, v0}, Lmiui/upnp/typedef/device/Device;->setDeviceId(Ljava/lang/String;)Z

    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setFriendlyName(Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/upnp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/description.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setLocation(Ljava/lang/String;)Z

    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setModelNumber(Ljava/lang/String;)Z

    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setModelName(Ljava/lang/String;)Z

    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setModelDescription(Ljava/lang/String;)Z

    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setModelUrl(Ljava/lang/String;)Z

    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->manufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setManufacturer(Ljava/lang/String;)Z

    iget-object v2, p0, Lmiui/upnp/manager/host/DeviceConfig;->manufacturerUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/upnp/typedef/device/Device;->setManufacturerUrl(Ljava/lang/String;)Z

    return-object v1
.end method

.method public deviceName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/upnp/manager/host/DeviceConfig;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public manufacturer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/upnp/manager/host/DeviceConfig;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public manufacturerUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/upnp/manager/host/DeviceConfig;->manufacturerUrl:Ljava/lang/String;

    return-void
.end method

.method public modelDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelDescription:Ljava/lang/String;

    return-void
.end method

.method public modelName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelName:Ljava/lang/String;

    return-void
.end method

.method public modelNumber(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelNumber:Ljava/lang/String;

    return-void
.end method

.method public modelUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/upnp/manager/host/DeviceConfig;->modelUrl:Ljava/lang/String;

    return-void
.end method
