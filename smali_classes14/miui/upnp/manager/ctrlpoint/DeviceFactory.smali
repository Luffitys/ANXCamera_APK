.class public Lmiui/upnp/manager/ctrlpoint/DeviceFactory;
.super Ljava/lang/Object;
.source "DeviceFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceFactroy"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDevice(Lmiui/upnp/typedef/device/Device;)Lmiui/upnp/manager/ctrlpoint/AbstractDevice;
    .registers 9

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device type is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Device;->getDeviceType()Lmiui/upnp/typedef/device/urn/DeviceType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceFactroy"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/upnp/manager/UpnpManager;->getInstance()Lmiui/upnp/manager/UpnpManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/manager/UpnpManager;->getClassProvider()Lmiui/upnp/manager/UpnpClassProvider;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Device;->getDeviceType()Lmiui/upnp/typedef/device/urn/DeviceType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiui/upnp/manager/UpnpClassProvider;->getDeviceClass(Lmiui/upnp/typedef/device/urn/DeviceType;)Lmiui/upnp/typedef/deviceclass/DeviceClass;

    move-result-object v1

    if-nez v1, :cond_5b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown device class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Device;->getDeviceType()Lmiui/upnp/typedef/device/urn/DeviceType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/upnp/manager/UpnpManager;->getInstance()Lmiui/upnp/manager/UpnpManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/manager/UpnpManager;->getClassProvider()Lmiui/upnp/manager/UpnpClassProvider;

    move-result-object v3

    sget-object v4, Lmiui/upnp/manager/ctrlpoint/UnknownDevice;->DEVICE_TYPE:Lmiui/upnp/typedef/device/urn/DeviceType;

    invoke-virtual {v3, v4}, Lmiui/upnp/manager/UpnpClassProvider;->getDeviceClass(Lmiui/upnp/typedef/device/urn/DeviceType;)Lmiui/upnp/typedef/deviceclass/DeviceClass;

    move-result-object v1

    if-nez v1, :cond_5b

    const-string v3, "default device class not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    :cond_5b
    invoke-virtual {v1}, Lmiui/upnp/typedef/deviceclass/DeviceClass;->getClazz()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_7a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "class not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmiui/upnp/typedef/deviceclass/DeviceClass;->getDeviceType()Lmiui/upnp/typedef/device/urn/DeviceType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    :cond_7a
    :try_start_7a
    const-string v2, "create"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lmiui/upnp/typedef/device/Device;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;
    :try_end_93
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_7a .. :try_end_93} :catch_95

    move-object v0, v4

    goto :goto_9a

    :catch_95
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_9a
    return-object v0
.end method
