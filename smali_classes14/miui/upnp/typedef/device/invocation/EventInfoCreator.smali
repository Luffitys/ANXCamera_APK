.class public Lmiui/upnp/typedef/device/invocation/EventInfoCreator;
.super Ljava/lang/Object;
.source "EventInfoCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventInfoCreator"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lmiui/upnp/typedef/device/Device;Ljava/lang/String;)Lmiui/upnp/typedef/device/invocation/EventInfo;
    .registers 6

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

    const-string v3, "EventInfoCreator"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_19
    invoke-static {v1}, Lmiui/upnp/typedef/device/invocation/EventInfoCreator;->create(Lmiui/upnp/typedef/device/Service;)Lmiui/upnp/typedef/device/invocation/EventInfo;

    move-result-object v0

    :goto_1d
    return-object v0
.end method

.method public static create(Lmiui/upnp/typedef/device/Service;)Lmiui/upnp/typedef/device/invocation/EventInfo;
    .registers 5

    new-instance v0, Lmiui/upnp/typedef/device/invocation/EventInfo;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/invocation/EventInfo;-><init>()V

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getDevice()Lmiui/upnp/typedef/device/Device;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Device;->getDiscoveryTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/EventInfo;->setDiscoveryTypes(Ljava/util/List;)V

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getType()Lmiui/upnp/typedef/device/urn/ServiceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/EventInfo;->setServiceType(Lmiui/upnp/typedef/device/urn/ServiceType;)V

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/EventInfo;->setServiceId(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getDevice()Lmiui/upnp/typedef/device/Device;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/EventInfo;->setDeviceId(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getProperties()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/PropertyDefinition;->isSendEvents()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-virtual {v0}, Lmiui/upnp/typedef/device/invocation/EventInfo;->getProperties()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4e
    goto :goto_31

    :cond_4f
    return-object v0
.end method
