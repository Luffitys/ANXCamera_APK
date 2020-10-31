.class public abstract Lmiui/upnp/manager/ctrlpoint/AbstractDevice;
.super Ljava/lang/Object;
.source "AbstractDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public device:Lmiui/upnp/typedef/device/Device;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    :cond_12
    move-object v2, p1

    check-cast v2, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;

    iget-object v3, p0, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;->device:Lmiui/upnp/typedef/device/Device;

    if-eqz v3, :cond_22

    iget-object v4, v2, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;->device:Lmiui/upnp/typedef/device/Device;

    invoke-virtual {v3, v4}, Lmiui/upnp/typedef/device/Device;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_27

    :cond_22
    iget-object v3, v2, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;->device:Lmiui/upnp/typedef/device/Device;

    if-nez v3, :cond_27

    :cond_26
    goto :goto_28

    :cond_27
    :goto_27
    move v0, v1

    :goto_28
    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lmiui/upnp/manager/ctrlpoint/AbstractDevice;->device:Lmiui/upnp/typedef/device/Device;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiui/upnp/typedef/device/Device;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
