.class public interface abstract Lcom/android/server/DeviceIdleInternal;
.super Ljava/lang/Object;
.source "DeviceIdleInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleInternal$StationaryListener;
    }
.end annotation


# virtual methods
.method public abstract addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V
.end method

.method public abstract addPowerSaveTempWhitelistAppDirect(IJZLjava/lang/String;)V
.end method

.method public abstract exitIdle(Ljava/lang/String;)V
.end method

.method public abstract getNotificationWhitelistDuration()J
.end method

.method public abstract getPowerSaveTempWhitelistAppIds()[I
.end method

.method public abstract getPowerSaveWhitelistUserAppIds()[I
.end method

.method public abstract isAppOnWhitelist(I)Z
.end method

.method public abstract onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
.end method

.method public abstract registerDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
.end method

.method public abstract registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
.end method

.method public abstract setAlarmsActive(Z)V
.end method

.method public abstract setJobsActive(Z)V
.end method

.method public abstract unregisterDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
.end method

.method public abstract unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
.end method
