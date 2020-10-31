.class public interface abstract Landroid/location/LocationListener;
.super Ljava/lang/Object;
.source "LocationListener.java"


# virtual methods
.method public abstract onLocationChanged(Landroid/location/Location;)V
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
