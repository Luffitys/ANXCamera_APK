.class public Lmiui/upnp/manager/UpnpClassProvider;
.super Ljava/lang/Object;
.source "UpnpClassProvider.java"


# instance fields
.field private classes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/upnp/typedef/deviceclass/DeviceClass;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/manager/UpnpClassProvider;->classes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized addDeviceClass(Lmiui/upnp/typedef/deviceclass/DeviceClass;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/upnp/manager/UpnpClassProvider;->classes:Ljava/util/Map;

    invoke-virtual {p1}, Lmiui/upnp/typedef/deviceclass/DeviceClass;->getDeviceType()Lmiui/upnp/typedef/device/urn/DeviceType;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/urn/DeviceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/upnp/manager/UpnpClassProvider;->classes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceClass(Ljava/lang/String;)Lmiui/upnp/typedef/deviceclass/DeviceClass;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/upnp/manager/UpnpClassProvider;->classes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/deviceclass/DeviceClass;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDeviceClass(Lmiui/upnp/typedef/device/urn/DeviceType;)Lmiui/upnp/typedef/deviceclass/DeviceClass;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lmiui/upnp/typedef/device/urn/DeviceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/upnp/manager/UpnpClassProvider;->getDeviceClass(Ljava/lang/String;)Lmiui/upnp/typedef/deviceclass/DeviceClass;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
