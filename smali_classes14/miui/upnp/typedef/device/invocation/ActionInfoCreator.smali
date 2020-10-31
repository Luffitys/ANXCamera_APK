.class public Lmiui/upnp/typedef/device/invocation/ActionInfoCreator;
.super Ljava/lang/Object;
.source "ActionInfoCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionInfoCreator"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lmiui/upnp/typedef/device/Action;)Lmiui/upnp/typedef/device/invocation/ActionInfo;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string v1, "ActionInfoCreator"

    const-string v2, "action is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    :cond_b
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Action;->getService()Lmiui/upnp/typedef/device/Service;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Service;->getDevice()Lmiui/upnp/typedef/device/Device;

    move-result-object v2

    new-instance v3, Lmiui/upnp/typedef/device/invocation/ActionInfo;

    invoke-direct {v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;-><init>()V

    move-object v0, v3

    invoke-virtual {v0, p0}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setAction(Lmiui/upnp/typedef/device/Action;)V

    invoke-virtual {v2}, Lmiui/upnp/typedef/device/Device;->getDiscoveryTypes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setDiscoveryTypes(Ljava/util/List;)V

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Service;->getType()Lmiui/upnp/typedef/device/urn/ServiceType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setServiceType(Lmiui/upnp/typedef/device/urn/ServiceType;)V

    invoke-virtual {v2}, Lmiui/upnp/typedef/device/Device;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setAddress(Ljava/lang/String;)Z

    invoke-virtual {v2}, Lmiui/upnp/typedef/device/Device;->getHostPort()I

    move-result v3

    invoke-virtual {v0, v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setHostPort(I)Z

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Service;->getControlUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setControlUrl(Ljava/lang/String;)Z

    invoke-virtual {v2}, Lmiui/upnp/typedef/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setDeviceId(Ljava/lang/String;)Z

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Service;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->setServiceId(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Action;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/upnp/typedef/device/Argument;

    invoke-virtual {v4}, Lmiui/upnp/typedef/device/Argument;->getRelatedProperty()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmiui/upnp/typedef/device/Service;->getProperty(Ljava/lang/String;)Lmiui/upnp/typedef/property/Property;

    move-result-object v5

    invoke-virtual {v0}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->getProperties()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Lmiui/upnp/typedef/device/Argument;->getRelatedProperty()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_55

    :cond_75
    :goto_75
    return-object v0
.end method

.method public static create(Lmiui/upnp/typedef/device/Device;Ljava/lang/String;Ljava/lang/String;)Lmiui/upnp/typedef/device/invocation/ActionInfo;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Device;->getService(Ljava/lang/String;)Lmiui/upnp/typedef/device/Service;

    move-result-object v1

    if-nez v1, :cond_19

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Service not found: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActionInfoCreator"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_19
    invoke-static {v1, p2}, Lmiui/upnp/typedef/device/invocation/ActionInfoCreator;->create(Lmiui/upnp/typedef/device/Service;Ljava/lang/String;)Lmiui/upnp/typedef/device/invocation/ActionInfo;

    move-result-object v0

    :goto_1d
    return-object v0
.end method

.method public static create(Lmiui/upnp/typedef/device/Service;Ljava/lang/String;)Lmiui/upnp/typedef/device/invocation/ActionInfo;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getActions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/Action;

    if-nez v1, :cond_1f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Action not found: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActionInfoCreator"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_1f
    invoke-static {v1}, Lmiui/upnp/typedef/device/invocation/ActionInfoCreator;->create(Lmiui/upnp/typedef/device/Action;)Lmiui/upnp/typedef/device/invocation/ActionInfo;

    move-result-object v0

    :goto_23
    return-object v0
.end method
