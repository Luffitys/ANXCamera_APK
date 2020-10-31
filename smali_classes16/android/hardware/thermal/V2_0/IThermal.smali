.class public interface abstract Landroid/hardware/thermal/V2_0/IThermal;
.super Ljava/lang/Object;
.source "IThermal.java"

# interfaces
.implements Landroid/hardware/thermal/V1_0/IThermal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/thermal/V2_0/IThermal$Stub;,
        Landroid/hardware/thermal/V2_0/IThermal$Proxy;,
        Landroid/hardware/thermal/V2_0/IThermal$getCurrentCoolingDevicesCallback;,
        Landroid/hardware/thermal/V2_0/IThermal$getTemperatureThresholdsCallback;,
        Landroid/hardware/thermal/V2_0/IThermal$getCurrentTemperaturesCallback;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.thermal@2.0::IThermal"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/thermal/V2_0/IThermal;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    nop

    const-string v1, "android.hardware.thermal@2.0::IThermal"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_15

    instance-of v3, v2, Landroid/hardware/thermal/V2_0/IThermal;

    if-eqz v3, :cond_15

    move-object v0, v2

    check-cast v0, Landroid/hardware/thermal/V2_0/IThermal;

    return-object v0

    :cond_15
    new-instance v3, Landroid/hardware/thermal/V2_0/IThermal$Proxy;

    invoke-direct {v3, p0}, Landroid/hardware/thermal/V2_0/IThermal$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_1a
    invoke-interface {v3}, Landroid/hardware/thermal/V2_0/IThermal;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_37

    if-eqz v6, :cond_35

    return-object v3

    :cond_35
    goto :goto_22

    :cond_36
    goto :goto_38

    :catch_37
    move-exception v1

    :goto_38
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/thermal/V2_0/IThermal;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/thermal/V2_0/IThermal;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/thermal/V2_0/IThermal;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static getService()Landroid/hardware/thermal/V2_0/IThermal;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/thermal/V2_0/IThermal;->getService(Ljava/lang/String;)Landroid/hardware/thermal/V2_0/IThermal;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/thermal/V2_0/IThermal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.thermal@2.0::IThermal"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/thermal/V2_0/IThermal;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/thermal/V2_0/IThermal;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Landroid/hardware/thermal/V2_0/IThermal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.thermal@2.0::IThermal"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/thermal/V2_0/IThermal;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/thermal/V2_0/IThermal;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Landroid/hardware/thermal/V2_0/IThermal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/thermal/V2_0/IThermal;->getService(Ljava/lang/String;Z)Landroid/hardware/thermal/V2_0/IThermal;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentCoolingDevices(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentCoolingDevicesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentTemperatures(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentTemperaturesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTemperatureThresholds(ZILandroid/hardware/thermal/V2_0/IThermal$getTemperatureThresholdsCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerThermalChangedCallback(Landroid/hardware/thermal/V2_0/IThermalChangedCallback;ZI)Landroid/hardware/thermal/V1_0/ThermalStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterThermalChangedCallback(Landroid/hardware/thermal/V2_0/IThermalChangedCallback;)Landroid/hardware/thermal/V1_0/ThermalStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
