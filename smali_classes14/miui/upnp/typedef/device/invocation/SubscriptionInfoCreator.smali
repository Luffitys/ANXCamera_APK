.class public Lmiui/upnp/typedef/device/invocation/SubscriptionInfoCreator;
.super Ljava/lang/Object;
.source "SubscriptionInfoCreator.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lmiui/upnp/typedef/device/Service;)Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    .registers 5

    new-instance v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;-><init>()V

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getDevice()Lmiui/upnp/typedef/device/Device;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Device;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setHostAddress(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getDevice()Lmiui/upnp/typedef/device/Device;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Device;->getHostPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setHostPort(I)Z

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setSubscriptionId(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getEventSubUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setEventSubUrl(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getDevice()Lmiui/upnp/typedef/device/Device;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Device;->getDiscoveryTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setDiscoveryTypes(Ljava/util/List;)V

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getDevice()Lmiui/upnp/typedef/device/Device;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setDeviceId(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setServiceId(Ljava/lang/String;)Z

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Service;->getEventSubUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->setCallbackUrl(Ljava/lang/String;)Z

    return-object v0
.end method
